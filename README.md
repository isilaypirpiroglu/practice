# new_practice

My practice repo for learning the fMRI workflow on Nyx
(container, Slurm, git, conda, Jupyter).

## What is where

- `fmri_analysis/`: submodule from dchaimow (read-only, I don't change it)
- `scripts/`, `slurm/`: not written yet

## Data (not in git)

- `/ptmp/ipirpiroglu/ipirpiroglu/data/sample_bids/`: OpenNeuro ds003043,
  sub-01, ses-1, run-01 (CC0)
- `/ptmp/ipirpiroglu/ipirpiroglu/data/sample_bids2/`: OpenNeuro ds000114 sample

## Software

- Container: `/home/rglz/containers/gfae.sif` (FSL, AFNI, ...)
- Conda env: `/ptmp/ipirpiroglu/bids_data/env`

## Notes to myself

- Downloads and git push on the login node, computing on a compute node
- Check `git status` before `git add`
- Never commit data or slurm-*.out files
