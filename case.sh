#!/bin/bash

dia=1

case "$dia" in
    1)
        echo "Domingo"
        ;;
    2) 
        echo "Segunda-Feira"
        ;;
    3)
        echo "Terça-Feira"
        ;;
    4) 
        echo "Quarta-Feira"
        ;;
    5) 
        echo "Quinta-Feira"
        ;;
    6) 
        echo "Sexta-Feira"
        ;;
    7) 
        echo "Sabado"
        ;;
    *)
        echo "Opção invalida"
        ;;
esac
