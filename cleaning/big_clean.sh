#!/usr/bin/bash

#saving the files we are given
files=$1

#saving the directoy
SCRATCH=$2

#grabbing the file names
fileNames="${files%.*}"

#saving the home directoy
root=$(pwd)

#unzipping the files to the target directoy
tar -zxf $files --directory=$SCRATCH

cd $SCRATCH

#Removing all instances of delete me! 
grep -lr "DELETE ME!" * | xargs rm

#creating a new zip
tar -czf cleaned_$fileNames.tgz $fileNames

#Moving the zip to the home directoy
mv cleaned_$fileNames.tgz $root
