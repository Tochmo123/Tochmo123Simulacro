read -p "Introduce el numero de llamadas: " llamadas

calctf1=100
calctf2=( $llamadas * 1 )+50
calctf3=( $llamadas * 2 )+20

if(( ( $calctf3 < $calctf2 ) && ( $calctf3 < $calctf1 ) ));
then
echo "La tarifa recomendada es la tarifa 3"
elif(( ( $calctf2 < $calctf1 ) && ( $calctf2 < $calctf3 ) ));
then
echo "La tarifa recomendada es la tarifa 2"
else
echo "La tarifa recomendada es la tarifa 1"
fi

