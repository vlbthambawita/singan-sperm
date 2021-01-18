#!/bin/sh
#SBATCH -p dgx2q
#SBATCH --gres=gpu:1


source activate pytorch-new

for i in `seq 0 9`
do

echo "$i"

srun python paint2image.py --input_name  dot_mask_new.png --ref_name sperm_3_3ch_gray.png --paint_start_scale $i

done;