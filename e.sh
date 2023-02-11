#!/bin/bash

nombre=$1
modulo=$2
totalMatriculas=`cat notas.txt | tail -n+2 | wc -l`

for i in `seq 1 $totalMatriculas`; do
i=$((i+1))
nom=`cat notas.txt | awk '{print $1}' | head -$i | tail -1`
mod=`cat notas.txt | awk '{print $2}' | head -$i | tail -1`
nota=`cat notas.txt | awk '{print $3}' | head -$i | tail -1`
if [ $nom = $nombre ] && [ $mod = $modulo ]
then
echo "El alumno $nombre del módulo $modulo tiene un: $nota"
fi
done

