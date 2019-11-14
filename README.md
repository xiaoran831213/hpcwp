# hpcc
tools to work with HPCC

This HPCC wraper tool helps to ease the setting up parallel computation task in a PBS or SLURM environment.

Researchers foucs on generating a list of independent commands, and let the wrapper to organized the entire task into a working
directory of multiple computation batches.

These batches can then be easily submitted into the underlying PBS or SLURM system for execution, and the results always stay in
the specified working directory.
