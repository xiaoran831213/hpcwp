# comman helper functions
import os.path as pt
import os
import sys
import shutil


def mkdirs(d):
    """ make deep folder """
    if pt.isdir(d):
        return
    if pt.isfile(d):
        raise Exception(d + " exists as a file.")
    os.makedirs(d)


def solvept(p):
    """ expand tilde and variables in path. """
    return pt.normpath(pt.expanduser(pt.expandvars(p)))


def __flatten__(x, sep=','):
    """ flatten a list of comma sepereated words, the first """
    if not isinstance(x, list):
        x = [x]
    return [j for i in x for j in i.split(sep)]


class hpcc_iter:
    def __init__(self,
                 src,
                 dst='.',
                 tag='',
                 asz=1,
                 bsz=3,
                 qsz=1,
                 mpc=1,
                 tpc=None,
                 debug=False,
                 **kw):
        """
        src: an iterable to supply commnand specific information
        dst: an directory to store generated HPCC scripts
        tag: a tag to identify the task

        ---------- command sequence control ----------
        asz: array size - the number of batches per array. an array submit one
        batch at a time - only after the previous one is done.

        bsz: batch size - the number of command queue(s) per batch. a queue
        occupies one physical node, all queues will be runing in parallele
        at any moment.
        it also dictates the number of nodes if not directly set by {nds}.

        qsz: queue size, number of command to line up at each node to be run
        in sequential order, they occupy only one physical node at any moment.


        ---------- command resource allocation ----------
        mpc: memory required for each command, in GB, which is in fact the
        memory to allocate for each physical node. the total amount for a batch
        is thus {bsz} * {mpc} if not otherwise specified.

        tpc: time per command, in Hour. the estimated time needed to complete
        one command. the walltime to ask for a batch would be {qsz} * {tpc} if
        not directly specified by {wtm}.

        -------- kw: the keyworkds --------
        ** pbs: use PBS(TORQUE) scheduler, instead of SLURM.
        ** cpy: a list of resources to copy to the script environment (e.g.
        source code dependencies).
        ** lnk: a list of resources to link into the script environment (e.g.
        shared data directory).
        ** mkd: directories to make within the script environment.

        ** mld: a list of HPCC module to be loaded
        ** pfx: batch prefix, a list of strings to write to the batch header.
        ** sfx: batch suffix, a list of strings to write to the batch footer.

        ** ---- hardware resource list ----:
        ** nds: number of nodes, corresponding to 'node=' directive in the PBS
        script, overwrite the one derived from {bsz}.

        ** ppn: processor(s) per node, corresponding to 'ppn=' directive in the
        PBS script. Asking for more than one processors per node is helpful if
        the commands to be wrapped have built in multi-thread parallelism (e.g.
        OMP, R-snow, python-theano, etc.).

        ** wtm: walltime, overwrite the one derived from {qsz}*{tpc}.
        ** mem: memory allocation, overwrite the one derived from {bsz}*{mpc}.
        ** gpu: use GPU cluster?

        """
        self.itr = iter(src)
        self.dst = '/tmp/hpc' if dst is None else pt.normpath(dst)
        self.pbs = kw.get('pbs', 0)  # use PBS-TORQUE?

        self.sdr = 'cms'        # command scripts
        mkdirs('{dst}/{sdr}'.format(dst=self.dst, sdr=self.sdr))
        self.tag = tag

        self.asz = 1 if asz is None else asz  # array size: batch per array
        self.bsz = 1 if bsz is None else bsz  # batch size: queue per batch
        self.qsz = 1 if qsz is None else qsz  # queue size: command per queue

        self.mpc = 1 if mpc is None else mpc  # memory per node
        self.tpc = 4.0 / self.qsz if tpc is None else tpc  # time per process

        self.mld = __flatten__(kw.get('mld', []))  # modules to load
        self.pfx = kw.get('pfx', [])               # batch prefix
        self.sfx = kw.get('sfx', [])               # batch surfix
        self.con = kw.get('con')                   # constraints

        # hardware resource list
        self.ppn = kw.get('ppn', 1)
        self.nds = kw.get('nds', self.bsz)
        self.wtm = kw.get('wtm', self.qsz * self.tpc)
        self.mem = kw.get('mem', self.mpc * self.nds)

        # email
        self.email = kw.get('email')

        # job submitter
        self.sbm = 'qsub' if self.pbs else 'sbatch'

        # file resource list
        cpy = __flatten__(kw.get('cpy', []))
        for r in cpy:
            shutil.copy(r, self.dst)

        lnk = __flatten__(kw.get('lnk', []))
        for r in lnk:
            r = pt.abspath(solvept(r))
            d = pt.join(self.dst, pt.basename(r))
            try:
                os.remove(d)
            except OSError:
                pass
            os.symlink(r, d)

        mkd = __flatten__(kw.get('mkd', []))
        for r in mkd:
            r = solvept(r)
            mkdirs(pt.join(self.dst, r))

        # iteration contex
        self.fo = open(os.devnull, 'w')  # script file
        self.ix = -1  # command index

        self.debug = debug

    def __inf__(self):
        """
        return information of the current wrapper, which can be
        used to format commands, prefix, and surfix.
        n: total number of command seen so far
        a: array index;
        i: batch index;
        j: within batch index of the node being written;
        k: within node index of the command being written.
        The following relationship holds among i, j and k:
        n = i * batch_size + j * queue_size + k
        """
        n = self.ix  # command in total
        q = n // self.qsz  # queue in total
        b = q // self.bsz  # batch in total
        a = b // self.asz  # array in total

        k = n % self.qsz  # command in queue
        j = q % self.bsz  # queue in batch
        # batch in array
        i = b % self.asz if self.asz > 1 else b

        ret = dict(n=n, a=a, i=i, b=b, j=j, q=q, k=k, N=self.tag)
        return ret

    def __write_batch_header__(self):
        # do nothing the command is not at the beginning of a new batch.
        if self.ix % (self.qsz * self.bsz) is not 0:
            return

        # informations
        inf = self.__inf__()

        # open a new script file
        if self.asz > 1:  # multiple arrays:
            fbt = pt.join(self.dst, self.sdr, '{a:03d}_{i:03d}.sh')
        else:  # only one array
            fbt = pt.join(self.dst, self.sdr, '{b:03d}.sh')
        fbt = fbt.format(**inf)

        if self.debug:
            self.fo = sys.stdout
        else:
            dst = self.dst
            dst = pt.expanduser(dst)
            dst = pt.expandvars(dst)
            self.fo = open(fbt, 'w')

        self.fo.write('#!/bin/bash -login\n')

        # -------- resource requsition -------- #
        # walltime
        _h = int(self.wtm)
        _m = int((self.wtm - _h) * 60)
        wtm = '{0:02d}:{1:02d}:00'.format(_h, _m)

        # memory
        mem = int(self.mem * 1024)

        # batch name
        tag = self.tag + '_' if self.tag else ''
        if self.asz > 1:  # append array_batch index
            nms = '{a:03d}_{i:03d}'.format(**inf)
        else:  # append batch index
            nms = '{b:03d}'.format(**inf)

        if self.pbs:            # PBS-TORQUE
            # nodes and processor/core per node
            self.fo.write('#PBS -l nodes={0}:ppn={1}\n'.format(
                self.nds, self.ppn))
            self.fo.write('#PBS -l walltime={0}\n'.format(wtm))
            # memory
            self.fo.write('#PBS -l mem={0}M\n'.format(mem))
            # constraint on features
            if self.con:
                self.fo.write('#PBS -l feature={0}\n'.format(self.con))
            # others
            self.fo.write('#PBS -j oe\n')  # join stdout and stderr
            self.fo.write('#PBS -V\n')  # copy environment vars
            # name
            self.fo.write('#PBS -N {0}{1}\n'.format(tag, nms))
            # captured stdout & stderr
            self.fo.write('#PBS -o std/{0}\n'.format(nms))
            # email
            if self.email is not None:
                self.fo.write('#PBS -M {0}\n'.format(self.email))
        else:                   # SLURM
            # nodes and processor/core per node
            self.fo.write('#SBATCH -N {0} -c {1}\n'.format(self.nds, self.ppn))
            self.fo.write('#SBATCH --time={0}\n'.format(wtm))
            # memory
            self.fo.write('#SBATCH --mem={0}M\n'.format(mem))
            # constraint on features
            if self.con:
                fmt = "#SBATCH --constraint=\"{}\"\n"
                self.fo.write(fmt.format(self.con))
            # others
            self.fo.write('#SBATCH --export=ALL\n')  # environment vars
            # name
            self.fo.write('#SBATCH -J {0}{1}\n'.format(tag, nms))
            # captured stdout & stderr
            self.fo.write('#SBATCH -o std/{0}\n'.format(nms))
            # email
            if self.email is not None:
                self.fo.write('#SBATCH --mail-user={0}\n'.format(self.email))


        # module loading
        if len(self.mld) > 0:
            self.fo.write('\n')
            self.fo.writelines(
                ['module load {0}\n'.format(m) for m in self.mld])

        # working directory
        self.fo.write('\n')
        if self.pbs:
            cd = '[ -n "$PBS_O_WORKDIR" ] && cd "$PBS_O_WORKDIR"\n\n'
        else:
            cd = '[ -n "$SLURM_SUBMIT_DIR" ] && cd "$SLURM_SUBMIT_DIR"\n\n'
        self.fo.write(cd)

        # batch prefix
        if len(self.pfx) > 0:
            self.fo.write('\n'.join(p.format(**inf) for p in self.pfx))
            self.fo.write('\n')

        # batch index
        hdr = ''
        if self.asz > 1:
            hdr += '\n# -------- array {a:03d} -------- #'
            hdr += '\n# -------- batch {i:03d} -------- #\n'
        else:
            hdr += '\n# -------- batch {b:03d} -------- #\n'
        self.fo.write(hdr.format(**inf))

    def __write_batch_footer__(self, eoc=False):
        """ wrap up the eoc of last batch """
        # nothing to wrap up if not at the beginning of a new batch.
        if not eoc and (self.ix + 1) % (self.qsz * self.bsz) is not 0:
            return

        # wrapping up the footer.
        # wait all queues finish running on multiple nodes.
        if self.bsz > 1:
            self.fo.write('\nwait')

        # batch suffix
        inf = self.__inf__()
        if len(self.sfx) > 0:
            self.fo.write('\n\n')
            self.fo.write('\n'.join(s.format(**inf) for s in self.sfx))
            self.fo.write('\n')

        # except when the command is at the beginning of a new array, always
        # chain up the new batch when wrapping up the last one.
        if self.asz > 1 and inf['i'] != self.asz - 1 and not eoc:
            qsb = '\n{0} {1}/{a:03d}_{i:03d}.sh'.format(
                self.sbm, self.sdr, a=inf['a'], i=inf['i'] + 1)
            self.fo.write(qsb)

        # close the script file
        self.fo.write('\n')
        if self.fo is not sys.stdout:
            self.fo.close()
        else:
            self.fo.write('# ******** [EOF] ********\n\n')

    def __write_queue_header__(self):
        # do nothing if there is only one queue per batch, or if the current
        # command is not at the beginning of a new queue.
        if self.bsz < 2 or self.ix % self.qsz is not 0:
            return

        # get the queue index within batch.
        j = self.ix // self.qsz % self.bsz
        self.fo.write('\n# queue {j:02d}\n'.format(j=j))
        self.fo.write('(\n')

    def __write_queue_footer__(self, eoc=False):
        """ wrap up the end of last queue. """
        # do nothing if there is only one queue per batch, or if the current
        # command is not at the beginning of a new queue.
        if self.bsz < 2:
            return
        if not eoc and (self.ix + 1) % self.qsz is not 0:
            return

        # wrap up the last queue.
        self.fo.write(')&')

    def __write_submiter__(self):
        # submission format
        if self.asz > 1:  # first batch of every array
            fmt = '({0} {1})&\n'.format(
                self.sbm, pt.join(self.sdr, '{0:03d}_000.sh'))
        else:  # every batch
            fmt = '({0} {1})&\n'.format(
                self.sbm, pt.join(self.sdr, '{0:03d}.sh'))

        if self.debug:
            f = sys.stdout
        else:
            f = open('{0}/sub.sh'.format(self.dst), 'w')

        f.write('#!/bin/bash\n')
        f.write('cd "`dirname $0`"\n')
        f.write('test -d std || mkd -p std\n')

        # number of command covered by each submission
        ssz = self.qsz * self.bsz * self.asz
        for l, i in enumerate(range(0, self.ix, ssz)):
            f.write(fmt.format(i // ssz))
            if (l + 1) % 10 == 0:
                f.write('wait\n')
        f.write('wait\n')

        if f is not sys.stdout:
            f.close()
            chmod_x(f)

    def __iter__(self):
        return self

    def __next__(self):
        return self.next()

    def next(self):
        try:
            cmdobj = next(self.itr)  # command specific object
        except StopIteration:
            self.__write_queue_footer__(True)
            self.__write_batch_footer__(True)
            self.ix += 1
            self.__write_submiter__()
            raise StopIteration()

        # when the within batch queue index is 0, it means we encountered
        # a new batch
        self.__write_queue_footer__()  # wrap up previous script
        self.__write_batch_footer__()
        self.ix += 1
        self.__write_batch_header__()
        self.__write_queue_header__()

        return self.fo, cmdobj


def chmod_x(fi):
    # make the script executable
    import stat as st
    fn = fi.name if 'name' in dir(fi) else fi
    mode = os.stat(fn).st_mode
    os.chmod(fn, mode | st.S_IXUSR | st.S_IXGRP | st.S_IXOTH)


def test1():
    hi = hpcc_iter(
        range(50),
        tag='aba',
        dst='../tmp',
        asz=1,
        qsz=4,
        bsz=1,
        wtm=2,
        mem=1,
        mld=['GNU4.9,R/3.1.0', 'Scipy/19.2,Numpy/11.3,Python/2.78'],
        pbs=0,
        con='intel16|intel18',
        pfx=[
            'export THEANO_FLAGS=\'base_compiledir=/mnt/home/tongxia1/TC/{n}\''
        ],
        lnk=['align_vtx.sh', '../dat'],
        debug=True)
    for fo, cm in hi:
        print(fo, cm)
