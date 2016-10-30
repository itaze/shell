#!/bin/bash
origem='.../'
destino='.../'
while [ 1 ]
do
    rsync -ravzP --partial $origem $destino
    if [ "$?" = "0" ] ; then
        echo "Sincronia terminada com sucesso!"
        exit
    else
        echo "Falha na sincronia. Tentando..."
        sleep 60
    fi
done
