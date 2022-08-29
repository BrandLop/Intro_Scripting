#!/bin/bash
#Programa que calcula el factorial de un numero
factorial() {
  n=$1
  if((n < 0)); then
    echo "Factorial de un numero negativo no definido :("
  elif((n == 0)); then
    echo 1
  else 
    echo $((n*$(factorial $n-1)))
  fi
}

read -p "Enter the number: " num
factorial $num
