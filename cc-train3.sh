#!/bin/bash

# ref.
# https://github.com/balancap/SSD-Tensorflow
# https://github.com/tensorflow/models/tree/master/slim
# $ wget download.tensorflow.org/models/vgg_16_2016_08_28.tar.gz
#

DATASET_DIR=/home/ubuntu/voc/VOC2012/converted/
TRAIN_DIR=/home/ubuntu//logs/
CHECKPOINT_PATH=/home/ubuntu/models/vgg_16.ckpt
python train_ssd_network.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=pascalvoc_2012 \
    --dataset_split_name=train \
    --model_name=ssd_300_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --checkpoint_model_scope=vgg_16 \
    --checkpoint_exclude_scopes=ssd_300_vgg/conv6,ssd_300_vgg/conv7,ssd_300_vgg/block8,ssd_300_vgg/block9,ssd_300_vgg/block10,ssd_300_vgg/block11,ssd_300_vgg/block4_box,ssd_300_vgg/block7_box,ssd_300_vgg/block8_box,ssd_300_vgg/block9_box,ssd_300_vgg/block10_box,ssd_300_vgg/block11_box \
    --save_summaries_secs=60 \
    --save_interval_secs=600 \
    --weight_decay=0.0005 \
    --optimizer=rmsprop \
    --learning_rate=0.0001 \
    --batch_size=32

### EOF ###
