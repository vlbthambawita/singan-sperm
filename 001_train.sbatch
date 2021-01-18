#!/bin/sh
#SBATCH -p dgx2q
#SBATCH --gres=gpu:1


source activate pytorch-new
srun python main_train.py --input_name polyp_4_channel_test_1.png  --nc_z 4 --nc_im 4