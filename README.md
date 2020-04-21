# Introduction
A wrapper tool to ease the set up of parallel tasks in a PBS/SLUM environment.

Researchers focus on listing independent commands (i.e., repeats of a simulation) and resources (i.e., data files and scripts), and let the wrapper organize the commands into a working directory of multiple jobs.

These jobs can easily submit to the PBS/SLURM system for queueing and execution, and the results will stay in the working directory for collection.

# Example

estimate PI with 1e8 x 1000 samples, using R language.

```sh
cmd='Rscript -e "n<-1e8; x<-runif(n); y<-runif(n); p<-mean(x^2+y^2<1); saveRDS(p, \"{n:04d}.rds\")"'

# under working directory "pi", repeat 1000 times, 10 per job
hpcwp "$cmd" -i1000 -d pi --wtm .5 -q20 -m4  --log none

# submit SLRUM jobs, and weight a few minius
pi/sub.sub

# gether mean estimate
cd pi; Rscript -e 'mean(sapply(dir(".", "rds$"), readRDS))'
```
