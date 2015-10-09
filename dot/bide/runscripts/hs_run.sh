#! /bin/bash
file=$1
name="${file%.*}"
ghc $file
./$name
rm $name *.hi *.o
