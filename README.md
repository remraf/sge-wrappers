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

## Wrappers Scripts

Wrapper scripts are available for particular versions of  applications. The scripts are organized in directories by application and application version (e.g. gaussian/wrap-g16)

If an application or an application version hasn't been created, then modify an existing application wrapper or modify the generic wrapper template (wrap.template).

## Job Options

specify queue to execute job (use 'qconf -sql' to list queues)
```
#$ -q <queue>
```

execute job from current working directory
```
#$ -cwd
```

specify shell to execute job
```
#$ -S <shell>
```
specify file for standard error output
```
#$ -e <path_to_file>
```

specify file for standard output
```
#$ -o <path_to_file>
```

send email at beginning of job (-b), end of job (-e), and when job is aborted or rescheduled (requires -M)
```
#$ -m bea
```

define email address to send mail 
```
#$ -M <email>
```

define a value for a resource (e.g. h_rt=\<hh>:\<mm>)
```
#$ -l <resource>=<value>
``` 

## User Customization

1. Specify BINARY (e.g. matlab, g16, python)     
   Example (R):   
   &nbsp;&nbsp;&nbsp; BINARY=Rscript

2. Specify environment modules   
   Example (CP2K):   
   &nbsp;&nbsp;&nbsp; MODULES=(openmpi/3.1.3 cp2k/5.1)

3. Specify output file extension         
   Program output will be placed in a file named after the "INPUT_FILE" along with this file extension.     
   Example (gaussian):   
   &nbsp;&nbsp;&nbsp; EXTENSION="out"

4. Specify application arguments    
   Example (MATLAB):    
   &nbsp;&nbsp;&nbsp; PROGRAM_OPTIONS="-nosplash -nodisplay -nojvm"

## Specifying the number of slots in the input file

Some applications allow you to specify the number of slots in the application file. If this is the case, then use the NSLOTS placeholder  