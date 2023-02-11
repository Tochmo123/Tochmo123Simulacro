 #!/bin/bash

media=`cat notas.txt | awk '{print $3}' | head -n$i | tail -n1`

echo "$media"