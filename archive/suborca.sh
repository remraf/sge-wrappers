#!/bin/bash
#
#$ -q all.q
#$ -pe openmp 4
#$ -S /bin/bash
#$ -e error.log
#$ -o output.log
#$ -V 

INPUT='o1.inp'
FILE="${INPUT%.inp}"
ORCA_BIN=/cm/shared/apps/orca/orca_3_0_3_linux_x86-64/orca
SCRATCH_DIR="/scratch/${USER}/$JOB_ID"

source /etc/profile.d/modules.sh
module load shared openmpi/gcc orca

## create working directory
if [[ ! -d "$SCRATCH_DIR" ]]
then
	mkdir -p $SCRATCH_DIR
fi
if [[ ! -f "${SCRATCH_DIR}/${INPUT}" ]]
then
	cp $INPUT $SCRATCH_DIR
fi	

$ORCA_BIN ${INPUT} > ${FILE}.out
