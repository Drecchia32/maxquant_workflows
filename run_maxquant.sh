#!/bin/bash
#SBATCH --job-name=maxquant_run
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G
#SBATCH --time=48:00:00
#SBATCH --output=maxquant_%j.out
#SBATCH --error=maxquant_%j.err

#load conda 
source /hpc/uu_epigenetics/software/scripts/soft/miniconda3/etc/profile.d/conda.sh

#activate the maxquant environment
conda activate /hpc/uu_epigenetics/software/scripts/soft/miniconda3/envs/maxquant

#run MaxQuant with 4 threads
mono /hpc/uu_epigenetics/software/scripts/soft/miniconda3/envs/maxquant/bin/MaxQuantCmd.exe \
     ./mqpar_coIP_settings.xml \
