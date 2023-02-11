#!/bin/bash

nombre=$1
totalMatriculas=`cat notas.txt | tail -n+2 | wc -l`
susp=0

for i in `seq 1 $totalMatriculas`; do
i=$((i+1))
nom=`cat notas.txt | awk '{print $1}' | head -$i | tail -1`
nota=`cat notas.txt | awk '{print $3}' | head -$i | tail -1`
if [ $nom = $nombre ]
then
if [ $nota -lt 5 ]
then
susp=$((susp+1))
fi
fi
done

if [ $susp -eq 0 ]
then
echo "$nombre tiene todo aprobado."
else
echo "$nombre no tiene todo aprobado."
fi