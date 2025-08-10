#! /bin/bash

echo "nome: $1"
echo "idade: $2"

if [ $2 -ge 18 ]; then 
    echo "Maior de idade"
else
    echo "Menor de idade"
fi