#!/bin/bash
set -eu
sudo apt-get -y install lttng-modules-dkms
sudo apt-get -y install liblttng-ust-dev
sudo apt-get -y install lttng-tools
sudo apt-get -y install python3-lttngust
