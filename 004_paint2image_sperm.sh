


source activate pytorch-new

for i in `seq 0 9`
do

echo "$i"

python paint2image.py --input_name  dot_mask_new_3ch.png --ref_name sperm_6_3ch_gray.png --paint_start_scale $i

done;