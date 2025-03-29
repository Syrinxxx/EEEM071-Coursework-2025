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

# # 3.3 optimiser
# for optim in "sgd" "adam" "adamw"; do
#     STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
#         -s veri \
#         -t veri \
#         -a mobilenet_v3_small \
#         --root datasets \
#         --height 224 \
#         --width 224 \
#         --optim $optim \
#         --lr 0.0003 \
#         --max-epoch 10 \
#         --stepsize 20 40 \
#         --train-batch-size 64 \
#         --test-batch-size 100 \
#         --save-dir logs/3.3-mobilenet_v3_small-$optim
# done

# # 3.2 batch size

# for bs in 32 128; do  
#     STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
#         -s veri \
#         -t veri \
#         -a resnet18 \
#         --root datasets \
#         --height 224 \
#         --width 224 \
#         --optim amsgrad \
#         --lr 0.0001 \
#         --max-epoch 10 \
#         --stepsize 20 40 \
#         --train-batch-size $bs \
#         --test-batch-size 100 \
#         --color-jitter \
#         --color-aug \
#         --save-dir logs/3.2-resnet18-bs$bs
# done

for bs in 16 256; do  
    STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
        -s veri \
        -t veri \
        -a resnet18 \
        --root datasets \
        --height 224 \
        --width 224 \
        --optim amsgrad \
        --lr 0.0001 \
        --max-epoch 10 \
        --stepsize 20 40 \
        --train-batch-size $bs \
        --test-batch-size 100 \
        --color-jitter \
        --color-aug \
        --save-dir logs/3.2-resnet18-bs$bs
done




# 3.1 learning rate

# for lr in 0.0001 0.00001; do
#     STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
#     -s veri \
#     -t veri \
#     -a resnet18 \
#     --root datasets \
#     --height 224 \
#     --width 224 \
#     --optim amsgrad \
#     --lr $lr \
#     --max-epoch 10 \
#     --stepsize 20 40 \
#     --train-batch-size 64 \
#     --test-batch-size 100 \
#     --color-jitter \
#     --color-aug \
#     --save-dir logs/3.1-resnet18-ca-cj-lr$lr
# done

# for lr in 0.0005 0.001; do
#     STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
#     -s veri \
#     -t veri \
#     -a resnet18 \
#     --root datasets \
#     --height 224 \
#     --width 224 \
#     --optim amsgrad \
#     --lr $lr \
#     --max-epoch 10 \
#     --stepsize 20 40 \
#     --train-batch-size 64 \
#     --test-batch-size 100 \
#     --color-jitter \
#     --color-aug \
#     --save-dir logs/3.1-resnet18-ca-cj-lr$lr
# done


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

# # 2.2
# for random_erase in "" "--random-erase"; do
#     for color_jitter in "" "--color-jitter"; do
#         for color_aug in "" "--color-aug"; do

#             # exprriment name generation
#             EXP_NAME="2.2.3-resnet18"
#             [ ! -z "$random_erase" ] && EXP_NAME+="-randomerase"
#             [ ! -z "$color_jitter" ] && EXP_NAME+="-colorjitter"
#             [ ! -z "$color_aug" ] && EXP_NAME+="-coloraug"

#             echo "Running experiment: $EXP_NAME"

#             STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
#                 -s veri \
#                 -t veri \
#                 -a resnet18 \
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

