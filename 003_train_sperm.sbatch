#!/bin/sh
#SBATCH -p dgx2q
#SBATCH --gres=gpu:1


source activate pytorch-new
srun python main_train.py --input_name dot_mask_new.png  --nc_z 4 --nc_im 4
