#!/bin/bash
#SBATCH --job-name="uqad"
#SBATCH --output="uqad.%j.%N.out"
#SBATCH --partition=gpuA100x4
#SBATCH --mem=208G
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4  # could be 1 for py-torch
#SBATCH --cpus-per-task=16   # spread out to use 1 core per numa, set to 64 if tasks is 1
#SBATCH --gpus-per-node=1
#SBATCH --account=bcdz-delta-gpu
#SBATCH --no-requeue
#SBATCH -t 12:00:00

python train.py --load-json json_files/UQPFIN_jetclass_softmax_dropout_baseline.json --data-loc /scratch/bbuw/avroy/jet_tagging_datasets/datasets/
