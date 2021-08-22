#!/bin/bash


#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=17g
#SBATCH -p volta-gpu
#SBATCH -t 10-00:00:00
#SBATCH --qos gpu_access
#SBATCH --gres=gpu:1

python scripts/train_model.py --cfg_file=./exp/water/params.json
