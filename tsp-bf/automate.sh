#!/bin/bash
#
# $1 = cantidad de ejecuciones
# $2 = cantidad de hilos
# $3 = algoritmo a ejecutar
# $4 & $5 -> variables del algoritmo
COUNT=$1
for i in $( seq $COUNT )
do
        OMP_NUM_THREADS=$2 ./$3 $4 $5
done
