#!/bin/sh
#SBATCH -p dgx2q
#SBATCH --gres=gpu:1


source activate pytorch-new
srun python random_samples.py --input_name polyp_4_channel_test_1.png --mode random_samples --gen_start_scale 0 --nc_z 4 --nc_im 4
