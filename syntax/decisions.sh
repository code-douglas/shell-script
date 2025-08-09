#! /bin/bash

echo "Digite sua idade:"
read idade

if [ $idade -ge 18 ]; then 
    echo "Você deve se alistar ao exército"
else   
    echo "Você não tem idade minima suficiente"
fi