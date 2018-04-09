#!/bin/bash

curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
apt-get install python-pip python-dev build-essential -y