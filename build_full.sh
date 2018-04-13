#! /bin/bash

# dev phase : only once -s  for sandbox   
sudo singularity build -s full.simg full.def

# Enter the container shell
sudo singularity shell --writable full.simg 

# prod phase   
sudo singularity build --writable melody.img full.simg 
