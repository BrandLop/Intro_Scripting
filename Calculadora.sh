#!/bin/bash
read -p "Ingresa primer numero: " n1
read -p "Ingresa segundo numero: " n2

echo "1) Suma"
echo "2) Resta"
echo "3) Multiplicacion"
echo "4) Division"
read -p "Selecciona una operacion a realizar: " opc

case $opc in
        1) res=$(($n1+$n2));;
        2) res=$(($n1-$n2));;
        3) res=$(($n1*$n2));;
        4) res=$(($n1/$n2));;
esac
echo "El resultado es: $res"
