#!/bin/bash
#$ -N Mandelbrot_susie8
#$ -q class8i
#$ -pe mpi 8
#$ -R y

# Grid Engine Notes:
# -----------------
# 1) Use "-R y" to request job reservation otherwise single 1-core jobs
#    may prevent this multicore MPI job from running.   This is called
#    job starvation.

# Module load boost
module load boost/1.57.0

# Module load OpenMPI
module load openmpi-1.8.3/gcc-4.9.2

# Run the program 
mpirun -np 8  ./mandelbrot_susie 1000 1000
