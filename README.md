# new_practice

My practice repo for learning the fMRI workflow on Nyx
(container, Slurm, git, conda, Jupyter).

## What is in here

- `scripts/motion_correct.sh`: motion correction of one run with FSL mcflirt (runs inside the container)
- `slurm/motion_correct.sbatch`: the same as a Slurm job (not submitted yet)
- `fmri_analysis/`: submodule from dchaimow (read-only, I don't change it)

## Data (not in git)

- `/ptmp/ipirpiroglu/ipirpiroglu/data/sample_bids/`: OpenNeuro ds003043, sub-01, ses-1, run-01 (CC0). The motion-corrected result is in `derivatives/motion_correction/`
- `/ptmp/ipirpiroglu/ipirpiroglu/data/sample_bids2/`: OpenNeuro ds000114 sample

## Software

- Container: `/home/rglz/containers/gfae.sif` (FSL, AFNI, ...). The exact file name I used is in the sbatch file
- Conda env: `/ptmp/ipirpiroglu/bids_data/env`

## Notes to myself

- Downloads and git push on the login node, computing on a compute node
- Check `git status` before `git add`
- Never commit data or slurm-*.out files
