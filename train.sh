#!/bin/bash

# STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
# -s veri \
# -t veri \
# -a mobilenet_v3_small \
# --root datasets \
# --height 224 \
# --width 224 \
# --optim amsgrad \
# --lr 0.0005 \
# --max-epoch 10 \
# --stepsize 20 40 \
# --train-batch-size 64 \
# --test-batch-size 100 \
# --save-dir logs/3.1.1-0.0005-mobilenet_v3_small

# --lr 0.0003 \

# 3.2
for bs in (16 32 128 256);do
    STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
    -s veri \
    -t veri \
    -a mobilenet_v3_small \
    --root datasets \
    --height 224 \
    --width 224 \
    --optim amsgrad \
    --lr 0.0003 \
    --max-epoch 10 \
    --stepsize 20 40 \
    --train-batch-size $bs \
    --test-batch-size 100 \
    --save-dir logs/3.2-mobilenet_v3_small-bs$bs \


# 2.1

# STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
# -s veri \
# -t veri \
# -a resnet34 \
# --root datasets \
# --height 224 \
# --width 224 \
# --optim amsgrad \
# --lr 0.0003 \
# --max-epoch 10 \
# --stepsize 20 40 \
# --train-batch-size 64 \
# --test-batch-size 100 \
# --random-erase \
# --color-jitter \
# #--color-aug \
# --save-dir logs/2.2-resnet34-randomerase-colorjitter \


# for random_erase in "" "--random-erase"; do
#     for color_jitter in "" "--color-jitter"; do
#         for color_aug in "" "--color-aug"; do

#             # exprriment name generation
#             EXP_NAME="2.2-resnet50"
#             [ ! -z "$random_erase" ] && EXP_NAME+="-randomerase"
#             [ ! -z "$color_jitter" ] && EXP_NAME+="-colorjitter"
#             [ ! -z "$color_aug" ] && EXP_NAME+="-coloraug"

#             echo "Running experiment: $EXP_NAME"

#             STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
#                 -s veri \
#                 -t veri \
#                 -a resnet50 \
#                 --root datasets \
#                 --height 224 \
#                 --width 224 \
#                 --optim amsgrad \
#                 --lr 0.0003 \
#                 --max-epoch 10 \
#                 --stepsize 20 40 \
#                 --train-batch-size 64 \
#                 --test-batch-size 100 \
#                 --save-dir logs/$EXP_NAME \
#                 $random_erase $color_jitter $color_aug 
#         done
#     done
# done

# for random_erase in "" "--random-erase"; do
#     for color_jitter in "" "--color-jitter"; do
#         for color_aug in "" "--color-aug"; do

#             # exprriment name generation
#             EXP_NAME="2.2-resnet34"
#             [ ! -z "$random_erase" ] && EXP_NAME+="-randomerase"
#             [ ! -z "$color_jitter" ] && EXP_NAME+="-colorjitter"
#             [ ! -z "$color_aug" ] && EXP_NAME+="-coloraug"

#             echo "Running experiment: $EXP_NAME"

#             STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
#                 -s veri \
#                 -t veri \
#                 -a resnet34 \
#                 --root datasets \
#                 --height 224 \
#                 --width 224 \
#                 --optim amsgrad \
#                 --lr 0.0003 \
#                 --max-epoch 10 \
#                 --stepsize 20 40 \
#                 --train-batch-size 64 \
#                 --test-batch-size 100 \
#                 --save-dir logs/$EXP_NAME \
#                 $random_erase $color_jitter $color_aug 
#         done
#     done
# done

