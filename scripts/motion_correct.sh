#!/bin/bash
# Motion correction of one run (ds003043, sub-01, ses-1, run-01) with FSL mcflirt.
# Must be run INSIDE the gfae container (it provides mcflirt).

set -euo pipefail

# --- paths (edit here if anything moves) ---
BIDS_DIR=/ptmp/ipirpiroglu/ipirpiroglu/data/sample_bids
SUB=sub-01
SES=ses-1
RUN_NAME=${SUB}_${SES}_task-exp1_run-01

IN=${BIDS_DIR}/${SUB}/${SES}/func/${RUN_NAME}_bold.nii
OUT_DIR=${BIDS_DIR}/derivatives/motion_correction/${SUB}/${SES}/func
OUT=${OUT_DIR}/${RUN_NAME}_desc-mc_bold

# --- checks ---
if [ ! -f "$IN" ]; then
    echo "Input file not found: $IN"
    exit 1
fi

# make FSL write compressed .nii.gz files
export FSLOUTPUTTYPE=NIFTI_GZ

mkdir -p "$OUT_DIR"

# --- motion correction ---
# -plots : save the motion parameters (.par file)
# -report: print progress
# defaults: reference = middle volume, 6 dof, normcorr cost
mcflirt -in "$IN" -out "$OUT" -plots -report

echo "Done. Results are in: $OUT_DIR"
