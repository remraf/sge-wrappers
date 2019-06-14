# sge-wrappers
SGE wrapper scripts

## Description
A collection of wrappers scripts, customized to specific applications, for submitting jobs to an SGE (Sun Grid Engine) scheduler.

Some features of these scripts:

  - simplifies job submission allowing researchers to focus on research instead of technology
  - employs fast local scratch storage
  - easily modified for new applications
  - customizable behavior
  
## Usage
The syntax is:

```
qsub -pe <parallel_environment> <slots> -N <program_file> <wrapper>
```


