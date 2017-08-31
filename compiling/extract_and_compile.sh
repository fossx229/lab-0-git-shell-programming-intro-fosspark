#!/usr/bin/bash
PrimeNumber=$1
SCRATCH=$2
tar -zxf NthPrime.tgz --directory=$SCRATCH
cd $SCRATCH/NthPrime
gcc -o NthPrime *.c
./NthPrime $PrimeNumber


