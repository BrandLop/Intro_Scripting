#!/bin/bash
#Script que compara 3 numeros y dice cual es el mayor
read -p "Ingresa el primer numero " n1
read -p "Ingresa el segundo numero " n2
read -p "Ingresa el tercer numero " n3
if [[ $n1 > $n2 ]] && [[ $n1 > $n3 ]];
then
        echo "El numero mayor es $n1"
else
        if [[ $n2 > $n1 ]] && [[ $n2 > $n3 ]];
        then
                echo "El numero mayor es $n2"
        else
                echo "El numero mayor es $n3"
        fi
fi
