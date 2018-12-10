#!/usr/bin/env python
import os.path as pt
import hlp


def make_parser():
    # build command parser:
    import argparse
    parser = argparse.ArgumentParser(
        description="""Create batches of HPCC submission script
        calling a native command.""")

    # the command source
    parser.add_argument(
        'cmd',
        metavar='CMD',
        help=""" the source file containning a list of indepand commands to be
        parallelized. Use '-' to specifiy standard input as the source file.
        If the file is no where to be found, CMD is assumed to be an inline
        command. Inline command works better with simulations which usually run
        the same command for a large number of iterations. """)

    # the job tag
    parser.add_argument(
        '--tag',
        help=""" an tag string to help identify the job which the commands aims
        to accomplish. """)

    # command file / inline command separator
    parser.add_argument(
        '--sep',
        metavar='SEP',
        default='\n',
        help=
        """ The command separator. Separated commands will be run in parallel as stand
        alone processes.
        def = %(default)s""")

    # the module to be loaded
    parser.add_argument(
        '--mld',
        '--module-load',
        action='append',
        help=
        """ the HPCC module to be loaded, can be specified multple times for more
        than one modules. """)

    # the resource to be linked
    parser.add_argument(
        '--ln',
        action='append',
        dest='lnk',
        help=
        """the resources to be linked into the working directory of HPCC scripts,
        can be specified multiple times.""")
    # the resource to be copied
    parser.add_argument(
        '--cp',
        action='append',
        dest='cpy',
        help=
        """the resources to be copied into the working directory of HPCC scripts,
        can be specified multiple times.""")
    # the resource to be copied
    parser.add_argument(
        '--md',
        '--mkdir',
        action='append',
        dest='mkd',
        help=
        """the directory to be created in the working directory of HPCC scripts,
        can be specified multiple times.""")

    # number of iterations
    parser.add_argument(
        '--itr',
        '-i',
        '--iteration',
        type=int,
        default=1,
        metavar='I',
        help="""iterations, the number of command copies to run.
        def = %(default)s""")

    # destination directory
    parser.add_argument(
        '--dst',
        '--destination',
        '-d',
        default='.',
        metavar='DST',
        help="""
        destination to store HPCC script and output, which is also the working
        directory of the HPCC script.
        def = %(default)s.""")

    # command distribution
    parser.add_argument(
        '--asz',
        '--array-size',
        '-a',
        type=int,
        default=1,
        metavar='ASZ',
        help="""
        the number of batches per array. an array submit one batch at a time
        - only after the previous batch is done.
        def = %(default)s.""")

    parser.add_argument(
        '--bsz',
        '--batch-size',
        '-b',
        type=int,
        default=1,
        metavar='BSZ',
        help="""
        Nodes per batch, the number of parallel "lane(s)" in a batch script.
        Multiple nodes (NPB>1) in a single batch script enable the second tier
        of parallelism at process level. (The first tier being submittin more
        than one batch.)
        One node can run only one CMD instance at a time, it uses one process
        of the underlying OS.
        def = %(default)s.""")

    parser.add_argument(
        '--qsz',
        '--queue-size',
        '-q',
        type=int,
        default=4,
        metavar='Q',
        help="""
        queue size. the number of CMD copies assigned to each node.
        def = %(default)s.""")

    # indirect resource allocation.
    parser.add_argument(
        '--mpc',
        '--memory-per-command',
        type=float,
        default=1.0,
        metavar="MPC",
        help="""
        peak of memory in GB required to run one CMD. the estimated batch
        memory is calcuated as {BSZ} * {MPC} if not otherwise set by {MEM}.
        def = %(default)s.""")

    parser.add_argument(
        '--tpc',
        '--time-per-command',
        '-t',
        type=float,
        default=0.2,
        metavar='TPC',
        help="""
        the estimated hours required to complete one {CMD} copy. the batch
        walltime will be {BSZ} * {TPP} if not specified by {WTM}.
        def = %(default)s.""")

    # direct resource specification
    parser.add_argument(
        '--nds',
        '--nodes',
        type=int,
        dest='nds',
        help="""
        Directly specify nodes to be requested from hpcc, which overides {BSZ},
        but the wrapper will still write donw {BSZ} queues in a batch.
        def = %(default)s.""")

    parser.add_argument(
        '--ppn',
        '--processor-per-node',
        '-p',
        type=int,
        default=1,
        metavar='PPN',
        help="""
        Processors per node, multiple processors(CPU cores) can be assigned to
        one node so multiple threads in one process can run concurrently with
        shared memory allocation.
        Multi-processor is the third tier of parallelism, which is only useful
        when the CMD has built-in multi-threading mechanism (e.g. OMP, R-snow,
        python-theano, etc.).
        def = %(default)s.""")

    parser.add_argument(
        '--mem',
        '--memory',
        '-m',
        type=float,
        metavar='MEM',
        help="""
        Overwrite the amount of memory in GB to allocate for a batch.
        def = %(default)s.""")

    parser.add_argument(
        '--wtm',
        '--walltime',
        type=float,
        dest='wtm',
        help="""
        Directly specify walltime of a batch, which overides the automatically
        computed T*Q.
        def = %(default)s.""")

    parser.add_argument(
        '--con',
        '--constraint',
        metavar="CON",
        type=str,
        dest='con',
        help="""
        constraint to on the features, such as intel and gpu. """)

    # script decoration.
    parser.add_argument(
        '--sfx',
        '--suffix',
        action='append',
        type=str,
        dest='sfx',
        help="""
        the suffix, extra line of code to be added to the end of a batch.
        multiple suffixes can be specified.
        def = %(default)s. """)

    parser.add_argument(
        '--pfx',
        '--prefix',
        action='append',
        type=str,
        dest='pfx',
        help="""
        the prefix, extra line of code to be added to the beginning of a batch.
        multiple prefixes can be specified.
        def = %(default)s. """)

    parser.add_argument(
        '--log',
        type=str,
        dest='log',
        default="{n:04X}",
        help="""
        Log string format. Specify 'None' to suppress logging.
        def=%(default)s. """)

    parser.add_argument(
        '--pbs',
        action='store_const',
        const=True,
        dest='pbs',
        default=0,
        help="""
        Use lengency job scheduler Torque-PBS instead of SLURM.
        def=%(default)s. """)

    parser.add_argument(
        '--email',
        type=str,
        dest='email',
        default=None,
        help="""
        the email address to inform failed jobs.
        def=%(default)s. """)

    parser.add_argument(
        '--debug',
        action='store_const',
        const=1,
        dest='debug',
        help="""
        Debug wwitch. In debug mode, the generated command line will be
        printed to STDOUT instead of destination folder {DST}.
        def=%(default)s. """)

    return parser


def main(args):
    """ process parsed command line arguments. """

    # read client commands to be parallelized.
    if args.cmd is '-':
        cmd = [c.strip() for c in sys.stdin]
    elif pt.isfile(args.cmd):
        with open(args.cmd) as f:
            cmd = [c.strip() for c in f]
    else:
        cmd = [args.cmd]

    # further separate the command
    cmd = [c.strip() for cm in cmd for c in cm.split(args.sep)]

    # generator of indices (i, j)
    # i: index of current iteration
    # j: index of current command
    ij = ((i, j) for i in range(args.itr) for j in range(len(cmd)))
    args = dict((k, v) for k, v in vars(args).items() if v is not None)
    it = hlp.hpcc_iter(ij, **args)

    # na string
    nas = ['na', 'non', 'none']
    log = None if args['log'].lower() in nas else args['log']
    for fo, cij in it:
        # write the command
        inf = it.__inf__()
        ci, cj = cij
        if log is None:
            fm = cmd[cj] + '\n'
        else:
            fm = cmd[cj] + ' &>log/' + log + '\n'
        fo.write(fm.format(**inf))

    # creat the log and std directory
    hlp.mkdirs(pt.join(args['dst'], 'log'))
    hlp.mkdirs(pt.join(args['dst'], 'std'))

    return args


def test():
    # cmd = 'cmd.sh'
    # with open(cmd, 'wb') as f:
    #     for i in range(20):
    #         f.write('Ca{i:02d} -o; Cb{i:02d} -o {{n:03d}}.rs\n'.format(i=i))
    parser = make_parser()
    # cmd = 'cmd.sh -d tmp/d1 -q8 -a4 -b4 -p4 -t.5 -m2 --log None'
    cmd = 'db2.cmd -d tmp/d1 -q67 -t.5 -m2 --log None'
    arg = parser.parse_args(cmd.split())
    return main(arg)


if __name__ == '__main__':
    import sys

    parser = make_parser()
    if len(sys.argv) < 2:
        if sys.argv[0] is '':
            pass  # script editing
        else:
            parser.print_help()
    else:
        args = parser.parse_args(sys.argv[1:])
        print(args)
        main(args)
        print('HPCC script has been writen to:', args.dst)
