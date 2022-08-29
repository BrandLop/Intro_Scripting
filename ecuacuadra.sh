#!/bin/bash
#Programa que calcula las raices de una ecuacion cuadratica

echo -e "Teniendo en cuenta ax²+bx+c\n"
read -p "Ingresa el valor de a: " a
read -p "Ingresa el valor de b: " b
read -p "Ingresa el valor de c: " c

d=$(((b*b)-4*a*c))
if (( d < 0)); then
  echo "No existen soluciones reales :("
else
  x1=`echo "scale = 2 ; (0-$b+sqrt($d))/(2*$a)" | bc`
  x2=`echo "scale = 2 ; (0-$b-sqrt($d))/(2*$a)" | bc`
  echo -e "\nResultados\nx1 = $x1 \nx2 = $x2"
fi
