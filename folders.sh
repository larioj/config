#! /bin/bash

cd ~

git clone --recursive https://github.com/larioj/bide.git
cd bide
./install.sh

git clone --recursive https://github.com/larioj/vim.git
rm -rf .vim
mv vim .vim

