#!/bin/bash
#SBATCH --job-name=motion_correct
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --partition=compute
#SBATCH --time=02:00:00
#SBATCH --mem=8G
# (all #SBATCH lines must come before the first command)

# Container: full resolved file name (gfae.sif pointed to this on 2026-10-11)
SIF=/home/rglz/containers/gfae_20261004T113948Z_md5a8d5ea248cb593fd5a2155d8c5dfadca_gitb01e1f135f0a8ce653c53fae298bddffe09a247b.sif

# Make /ptmp and home visible inside the container (same value as in ~/.bashrc)
export APPTAINER_BIND="/run,/ptmp,/tmp,/opt/ohpc,/home/ipirpiroglu"

apptainer exec "$SIF" bash /home/ipirpiroglu/code/new_practice/scripts/motion_correct.sh
