#!/usr/bin/bash

files=$1

SCRATCH=$2

a=${files%.*}

here=$(pwd)

$echo $here

tar -zxf $files --directory=$SCRATCH

cd $SCRATCH
$echo $PWD
grep -lr "DELETE ME!" * | xargs rm

tar -czf cleaned_1$a.tgz
mv cleaned_1$a.tgz $here
