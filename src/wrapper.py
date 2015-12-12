#!/opt/software/Python/2.7.2--GCC-4.4.5/bin/python
import pdb
import os
import os.path as pt
from glob import glob as gg
import hlp

def make_parser():
    ## build command parser:
    import argparse
    parser = argparse.ArgumentParser(
        description='Create batches of HPCC submission script calling a native command.')

    ## the command to be parallelized
    parser.add_argument('cmd', metavar = 'CMD', help = 'the command to be parallelized')

    ## source to be executed by the command
    parser.add_argument('--source', '--src', '-s', metavar = 'SRC', default = None,
        help = """source data for the CMD to act upon, should be a tab delimated file 
        to supply paremeters for CMD. Use '-' to read from standard input.
        If the source data is supplied, the number of iteration will be set to the
        number of rows by default.
        def = %(default)s""")

    parser.add_argument('--src.sep', default = '\t',
        help = """ source data line delimiter. """)

    parser.add_argument('--src.hdr', action = 'store_true',
        help = """ source data has a head line. """)
    
    ## the module to be loaded
    parser.add_argument(
        '--module-load', '--mdl', action = 'append', metavar = 'M',
        help = """ the HPCC module to be loaded, can be specified multple times for more
        than one modules. """)
    
    ## the resource to be linked
    parser.add_argument(
        '--ln', '-l', action = 'append',
        help = """the resources to be linked into the working directory of HPCC scripts,
        can be specified multiple times for more than one resources.""")
    ## the resource to be copied
    parser.add_argument(
        '--cp', '-c', action = 'append',
        help = """the resources to be copied into the working directory of HPCC scripts,
        can be specified multiple times for more than one resources.""")
    
    ## number of iterations
    parser.add_argument(
        '--iteration', '--itr', '-i', type = int, default = 1000, metavar = 'I',
        help = """iterations, the number of command copies to run. 
        def = %(default)s""")

    ## destination directory
    parser.add_argument(
        '--destination', '--dst', '-d', default = '.', metavar = 'D',
        help = """destination to store HPCC script and output, which is also the working
        directory of the HPCC script.
        def = %(default)s.""")

    parser.add_argument(
        '--queue-size', '--qsz', '-q', type = int, default = 4, metavar = 'QSZ',
        help = """
        queue size. the number of command copies assigned to one processor.
        def = %(default)s.""")

    ## resource specificationso
    parser.add_argument(
        '--node-per-batch', '--npb', '-n', type = int, default = 4, metavar = 'NPB',
        help  = """
        Nodes per batch, each node can run one CMD copy at a time.
        def = %(default)s.""")
    
    parser.add_argument(
        '--processors-per-node', '--ppn', '-p', type = int, default = 1, metavar = 'PPN',
        help = """
        Processors per node, multiple processors are usefule if CMD has
        built-in parallel mechanism.
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
    cmd = '{c} &>{{i:04d}}.log\n'.format(c=args.cmd)

    ## split possible links and copies
    lnk = args.lnk.split(',') if args.lnk is not None else None
    cpy = args.cpy.split(',') if args.cpy is not None else None
    mdl = args.mdl.split(',') if args.mdl is not None else None
    
    for fo, cm in hlp.hpcc_iter(
            xrange(args.itr),
            dst=args.dst,
            npb=args.npb, ppn=args.ppn, qsz=args.qsz, mpn=args.mpn, tpp=args.tpp,
            lnk=lnk, cpy=cpy, mdl=mdl, debug = False):

        ## write the command
        fo.write(cmd.format(i=cm))
    
def test():
    parser = make_parser()
    arg = parser.parse_args('cmd1 - --itr 100'.split())
    ##arg = parser.parse_args(['cmd1'])
    print arg
    
if __name__ == '__main__':
    import sys
    parser = make_parser()
    if len(sys.argv) < 2:
        parser.print_help()
    else:
        args = parser.parse_args(sys.argv[1:])
        print args
        main(args)
        print 'HPCC script has been writen to:', args.dst
