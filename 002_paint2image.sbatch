#!/bin/sh
#SBATCH -p dgx2q
#SBATCH --gres=gpu:1


source activate pytorch-new
srun python paint2image.py --input_name  dot_sperm.png --ref_name sperm_sample_2.jpg --paint_start_scale 6