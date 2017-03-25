
# Download the data.
cd $HOME/data
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtrainval_06-Nov-2007.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar
# Extract the data.
tar -xvf VOCtrainval_11-May-2012.tar
tar -xvf VOCtrainval_06-Nov-2007.tar
tar -xvf VOCtest_06-Nov-2007.tar

$ ls ~/voc/VOC2012/
converted  trainval

$ ls ~/voc/VOC2012/trainval/
Annotations  ImageSets  JPEGImages  SegmentationClass  SegmentationObject

$ ls ~/voc/VOC2012/converted/
voc_2012_train.tfrecord
