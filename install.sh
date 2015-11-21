#!/bin/bash

cur_dir=$(dirname $0)
cd "$cur_dir"/src/
make
sudo make install
sudo mkdir -p /etc/Wireless/RT2870STA/
sudo cp RT2870STA.dat /etc/Wireless/RT2870STA/
sudo modprobe mt7601Usta
make clean
