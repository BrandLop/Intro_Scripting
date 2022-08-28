#!/bin/bash
#Programa que desglosa el IVA, ya sea un precio con IVA agregado o no agregado

echo "1) Calcular precio con IVA agregado"
echo "2) Calcular precio sin IVA agregado"
read -p "Seleccione una opcion: " opc
echo -e "\n"
read -p "Ingrese la cantidad a calcular: " price
case $opc in 
  1) siniva=`echo "scale = 2 ; $price / 1.16" | bc`
     iva=`echo "scale = 2 ; $price - $siniva" | bc`
     echo -e "Total: $ $price\nIVA: $ $iva\nCantidad sin IVA: $ $siniva";;
  2) iva=`echo "scale = 2 ; $price * 0.16" | bc`
     coniva=`echo "scale = 2 ; $price + $iva" | bc`
     echo -e "Cantidad sin IVA: $ $price\nIVA: $ $iva\nTotal: $ $coniva";;
esac
