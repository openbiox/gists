#!/usr/bin/env bash
# script to login fat node of SJTU PI using slurm
srun -n 1 --pty -p fat -t 2-20:16:00 --mem=9000 /bin/bash
