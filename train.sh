#!/bin/bash

# STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
# -s veri \
# -t veri \
# -a vgg16 \
# --root datasets \
# --height 224 \
# --width 224 \
# --optim amsgrad \
# --lr 0.0003 \
# --max-epoch 10 \
# --stepsize 20 40 \
# --train-batch-size 64 \
# --test-batch-size 100 \
# --save-dir logs/1.2-vgg16-veri


for random_erase in "" "--random-erase"; do
    for color_jitter in "" "--color-jitter"; do
        for color_aug in "" "--color-aug"; do

            # exprriment name generation
            EXP_NAME="2.1-mobilenet_v3_small"
            [ ! -z "$random_erase" ] && EXP_NAME+="-randomerase"
            [ ! -z "$color_jitter" ] && EXP_NAME+="-colorjitter"
            [ ! -z "$color_aug" ] && EXP_NAME+="-coloraug"

            echo "Running experiment: $EXP_NAME"

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
                --train-batch-size 64 \
                --test-batch-size 100 \
                --save-dir logs/$EXP_NAME \
                $random_erase $color_jitter $color_aug 
        done
    done
done

