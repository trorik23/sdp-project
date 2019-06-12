#!/bin/bash
mpicc nqueens_mpi_bloqueable.c -o mpi
for N in {5..13}
do
   mpirun -np 1 mpi $N
done
for N in {5..15}
do
   mpirun -np 4 mpi $N
done
# for N in {5..15}
# do
#    mpirun -np 50 mpi $N
# done
