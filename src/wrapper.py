#!/usr/bin/env python
import pdb
import os
import os.path as pt
import hlp

def make_parser():
    ## build command parser:
    import argparse
    parser = argparse.ArgumentParser(
        description='Create batches of HPCC submission script calling a native command.')

    ## the command source
    parser.add_argument('cmd', metavar = 'CMD',
        help = """ the source file containning a list of indepand commands to be parallelized.
        Use '-' to specifiy standard input as the source file.
        If the file is no where to be found, CMD is assumed to be an inline command. Inline 
        command works better with simulations which usually run the same command for a large
        number of iterations. """)

    ## command file / inline command separator
    parser.add_argument('--sep', metavar = 'SEP', default = '\n',
        help = """ The command separator. Separated commands will be run in parallel as stand
        alone processes.
        def = %(default)s""")

    ## the module to be loaded
    parser.add_argument(
        '--md', '--module-load', action = 'append', 
        help = """ the HPCC module to be loaded, can be specified multple times for more
        than one modules. """)
    
    ## the resource to be linked
    parser.add_argument(
        '--ln', action = 'append',
        help = """the resources to be linked into the working directory of HPCC scripts,
        can be specified multiple times for more than one resources.""")
    ## the resource to be copied
    parser.add_argument(
        '--cp', action = 'append',
        help = """the resources to be copied into the working directory of HPCC scripts,
        can be specified multiple times for more than one resources.""")
    
    ## number of iterations
    parser.add_argument(
        '--itr', '-i', '--iteration',  type = int, default = 1, metavar = 'I',
        help = """iterations, the number of command copies to run. 
        def = %(default)s""")

    ## destination directory
    parser.add_argument(
        '--dst', '--destination', '-d', default = '.', metavar = 'D',
        help = """destination to store HPCC script and output, which is also the working
        directory of the HPCC script.
        def = %(default)s.""")

    parser.add_argument(
        '--qsz', '--queue-size', '-q', type = int, default = 4, metavar = 'QSZ',
        help = """
        queue size. the number of CMD copies assigned to each node.
        def = %(default)s.""")

    ## resource specificationso
    parser.add_argument(
         '--npb', '--node-per-batch', '-n', type = int, default = 4, metavar = 'NPB',
        help  = """
        Nodes per batch, the number of parallel "lane(s)" in each batch script. A large
        number of batch script is the first tier of parallelism.
        The multiple nodes in one batch script is the second tier of parallelism.
        One node can run only one CMD instance at a time, and it uses one process of the
        underlying operating system.
        def = %(default)s.""")
    
    parser.add_argument(
         '--ppn', '--processor-per-node', '-p', type = int, default = 1, metavar = 'PPN',
        help = """
        Processors per node, multiple processors(CPU cores) can be assigned to one node so
        multiple threads in one process can run concurrently with shared memory allocation.
        This is the the third tier of parallelism.
        Tier 3 parallelism can only be effective if the underlying CMD has built-in multi-
        threading mechanism
        def = %(default)s.""")

    parser.add_argument(
        '--mpn', '-m', type = int, default = 1.0, metavar = "M",
        help = """
        memory per node, the estimated memory (in GB) need to run one copy of CMD.
        def = %(default)s.""")

    parser.add_argument(
        '--tpp', '-t', type = float, default = 0.2, metavar = 'T',
        help = """
        time per process, the esimated hours needed to run one copy of CMD.
        def = %(default)s.""")
    return parser

def main(args):
    """ process parsed command line arguments. """

    ## read client commands to be parallelized. 
    if args.cmd is '-':
        cmd = [c.strip() for c in sys.stdin]
    elif pt.isfile(args.cmd):
        with open(args.cmd) as f:
            cmd = [c.strip() for c in f]
    else:
        cmd = [args.cmd]
            
    ## further separate the command
    cmd = [c.strip() for cm in cmd for c in cm.split(args.sep)]

    ## generator of indices (i, j)
    ## i: index of current iteration
    ## j: index of current command
    ij = ((i, j) for i in xrange(args.itr) for j in xrange(len(cmd)))

    ## write PBS scripts
    for fo, ij in hlp.hpcc_iter(
            ij, dst=args.dst,
            npb=args.npb, ppn=args.ppn, qsz=args.qsz, mpn=args.mpn, tpp=args.tpp,
            lnk=args.ln, cpy=args.cp, mdl=args.md, debug = True):

        ## write the command
        i, j = ij
        fm = cmd[j] + ' &>{n:04X}.log\n'
        fo.write(fm.format(n=i*len(cmd)+j, i=i, j=j))
    
def test():
    cmd = '/tmp/cmd.txt'
    with open(cmd, 'wb') as f:
        for i in xrange(20):
            f.write('CMDa{i:02d} -o; CMDb{i:02d} -o {{n:03d}}.rds\n'.format(i=i))
    parser = make_parser()
    args = parser.parse_args('/tmp/cmd.txt -i 3 --sep ;'.split())
    main(args)
    
if __name__ == '__main__':
    import sys

    parser = make_parser()
    if len(sys.argv) < 2:
        if sys.argv[0] is '':
            pass                          # script editing
        else:
            parser.print_help()
    else:
        args = parser.parse_args(sys.argv[1:])
        print args
        main(args)
        print 'HPCC script has been writen to:', args.dst
