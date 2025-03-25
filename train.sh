#!/bin/bash

STUDENT_ID=zw00953 STUDENT_NAME="Ziyu Wang" python main.py \
-s veri \
-t veri \
-a resnet34 \
--root datasets \
--height 224 \
--width 224 \
--optim amsgrad \
--lr 0.0003 \
--max-epoch 10 \
--stepsize 20 40 \
--train-batch-size 64 \
--test-batch-size 100 \
--save-dir logs/1.2-resnet34-veri
