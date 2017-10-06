#!/usr/bin/bash
#Saving the prime number we are given
PrimeNumber=$1
#Saves the directory given as SCRATCH
SCRATCH=$2
#unzips given compressed fles
tar -zxf NthPrime.tgz --directory=$SCRATCH
#Changes into the unzipped directory
cd $SCRATCH/NthPrime
#compiles NthPrime
gcc -o NthPrime *.c
#runs NthPrime
./NthPrime $PrimeNumber


