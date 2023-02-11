#!/bin/bash
total=`cat notas.txt | tail -n+2 | wc -l`
suma=0
for i in `seq 1 $total`;do
   media=`cat notas.txt | awk '{print $3}' | head -n$((i+1)) | tail -1`
   suma=$((suma+media))
   echo $suma
done
promedio=$((suma/$total))
echo "La media de modulos es $promedio"