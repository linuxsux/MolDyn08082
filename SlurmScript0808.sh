#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --gpus=1
#SBATCH --mem-per-cpu=4000M
#SBATCH --time=0-15:00:00
# Usage: sbatch $0

module purge
module load StdEnv/2023  gcc/12.3  openmpi/4.1.5  cuda/12.2
module load python/3.10 openmm/8.1.1 netcdf/4.7.4 hdf5/1.10.6 mpi4py/3.0.3
source $HOME/env-parmed/bin/activate

python Test2.py