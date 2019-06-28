# sge-wrappers
SGE wrapper scripts

## Description
A collection of wrapper scripts, customized to specific applications, for submitting jobs to an SGE (Sun Grid Engine) scheduler.

Some features of these scripts:

  - simplifies job submission allowing researchers to focus on research instead of technology
  - employs fast local scratch storage
  - easily modified for new applications
  - customizable behavior
  
## Usage
The general syntax is:

```
qsub -pe <PARALLEL_ENVIRONMENT> <SLOTS> -N <INPUT_FILE> <WRAPPER>
```

For example, a job with an input file called "my_input", a wrapper called "my_wrapper", a parallel environment called "openmpi", and a requirement of 8 slots has the following syntax.

```
qsub -pe openmpi 8 -N my_input my_wrapper
```

## Job  Options

specify queue to execute job ('qconf -sql' to list queues)
```
#$ -q <queue>
#$ -q long.q
# execute job from current working directory
#$ -cwd
# specify shell to execute job
#$ -S <shell>
# specify file for error output
#$ -e <path_to_file>
