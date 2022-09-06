#!/bin/bash
#Script que realiza la suma de 3 numeros ingresados por el usuario
read -p "Ingresa el primer numero " num1
read -p "Ingresa el primer numero " num2
read -p "Ingresa el primer numero " num3
res=$(($num1+$num2+$num3))
echo "El resultado de la suma es $res"
