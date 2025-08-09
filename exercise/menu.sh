#!/bin/bash

opcao=0

while [ $opcao -ne 4 ]; do
    echo "====== MENU ======"
    echo "1 - Verificar se é maior de idade"
    echo "2 - Imprimir boas-vindas várias vezes"
    echo "3 - Exibir a data e hora atual"
    echo "4 - Sair"
    echo "=================="
    echo -n "Digite uma opção: "
    read opcao

    case $opcao in
        1)
            echo -n "Digite sua idade: "
            read idade
            if [ $idade -ge 18 ]; then
                echo "Você é maior de idade"
            else 
                echo "Você ainda não é maior de idade"
            fi
            ;;
        
        2) 
            echo -n "Digite a quantidade de vezes a ser impresso: "
            read qtdImpressao
            contador=1
            while [ $contador -le $qtdImpressao ]; do
                echo "Boas vindas"
                contador=$((contador + 1))
            done
            ;;
        
        3)
            echo "Data atual: $(date)"
            ;;

        4)
            echo "Saindo..."
            ;;
        
        *) 
            echo "Opção invalida."
            ;;
    esac
done

