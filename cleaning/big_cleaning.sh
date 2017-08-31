#!/usr/bin/bash
files=$1
SCRATCH=$2

tar -zxf $files --directory=$SCRATCH

cd $SCRATCH/big_dir

#grep "DELETE ME!" | xargs rm

