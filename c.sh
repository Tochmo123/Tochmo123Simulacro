#!/bin/bash

lineas=`cat notas.txt | wc -l`
aprobados=0
suspendidos=0

for i in `seq 2 $lineas`
do
    listatotal=`cat notas.txt | head -n$i | tail -1 | awk '{print $3}'`

    if [ $listatotal -ge 5 ];
    then
        aprobados=$(($aprobados+1))
    else
        suspendidos=$(($suspendidos+1))
    fi
done

echo "Los aprobados son $aprobados"
echo "Los suspendidos son $suspendidos"
    