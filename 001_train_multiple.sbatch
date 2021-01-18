#!/bin/sh
#SBATCH -t 13-23:59
#SBATCH -p dgx2q
#SBATCH --gres=gpu:1


source activate pytorch-new

image_dir="/work/vajira/DATA/hyper_kvasir/data_new/segmented_train_val/data/img_and_mask_together"

for i in $(ls $image_dir); 
do 

echo "$i"; 
srun python main_train.py --input_name $i  --nc_z 4 --nc_im 4 --input_dir $image_dir

done;
