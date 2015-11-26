#!/bin/bash

sudo apt-get install git subversion vim-gnome

sudo apt-get install fish
chsh -s `which fish`

sudo apt-get install compizconfig-settings-manager
sudo apt-get install mesa-utils

#ycm
sudo apt-get install build-essential cmake
sudo apt-get install python-dev

# caffe
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install protobuf glog gflags hdf5
