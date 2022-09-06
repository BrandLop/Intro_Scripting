#!/bin/bash
#Script que ejemplifica el uso de un switch
echo "¿Cual es tu SO favorito?"
echo "1) GNU/Linux"
echo "2) GNU/Hurd"
echo "3) Free BSD"
echo "4) Otros"
read -p "Selecciona una opcion: " opc

case $opc in
        1)echo "Seleccionaste GNU/Linux";;
        2)echo "Seleccionaste GNU/Hurd";;
        3)echo "Seleccionaste Free BSD";;
        4)echo "Seleccionaste otros";;
        *) echo "Opcion invalida";;
esac
