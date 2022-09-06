#!/bin/bash
#Script que verifica si un usuario es root para poder crear archivos de texto, donde se almacena su hora de creacion - Ejercicio 3
TODAY=$(date +"Hoy es %A %d de %B")
TIMENOW=$(date +"La hora en la que se creo el archivo es %r")
opc="s"
if ! [ $(id -u) = 0 ]; then
        echo "Debes ser root para poder ejecutar el programa"
else
        while [[ $opc == "s" ]]
        do
                read -p "Ingrese el nombre del usuario: " name
                touch $name.txt
                echo $TODAY >> $name.txt
                echo $TIMENOW >> $name.txt
                echo "contenido del archivo es el siguiente: "
                echo -e "\n"
                cat $name.txt
                echo -e "\n"
                echo "Archivo creado exitosamente"
                read -p "Desea crear otro usuario s/n: " opc
        done
fi
