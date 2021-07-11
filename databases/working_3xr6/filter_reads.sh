#!/bin/bash
#PBS -lselect=1:ncpus=16:mem=16
#PBS -lwalltime=03:00:00

# IMPORTANT
# - You should choose less processes than folders with single reads.
# - You need more CPUs than processes to launch.

module load anaconda3/personal

source activate project2_venv 

cd $HOME/project_2/databases/working_3xr6

# Launch the resquiggling for every folder
python3 filter_reads.py $HOME/project_2/databases/working_3xr6 12 flowcell2