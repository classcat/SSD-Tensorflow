#!/bin/bash

# $ bash conv.sh
# Dataset directory: /home/masao/voc/VOC2012/trainval/
# Output directory: /home/masao/voc/VOC2012/converted/
# >> Converting image 17125/17125
# Finished converting the Pascal VOC dataset!

DATASET_DIR=/home/masao/voc/VOC2012/trainval/
OUTPUT_DIR=/home/masao/voc/VOC2012/converted/
python tf_convert_data.py \
  --dataset_name=pascalvoc \
  --dataset_dir=${DATASET_DIR} \
  --output_name=voc_2012_train \
  --output_dir=${OUTPUT_DIR}

### EOF ###
