#! /bin/bash

opcao=0

data_atual() {
    echo "Data atual: $(date)"
}

exibir_boas_vindas() {
    contador=1
    while [ $contador -le $1 ]; do
        echo "Boas vindas"
        contador=$((contador + 1))
    done
}

exibir_maioridade() {
    if [ $1 -ge 18 ]; then
        echo "Você é maior de idade"
    else 
        echo "Você é menor de idade"
    fi
}

while [ $opcao -ne 4 ]; do
    echo "====== MENU ======"
    echo "1 - Verificar se é maior de idade"
    echo "2 - Imprimir boas-vindas várias vezes"
    echo "3 - Exibir a data e hora atual"
    echo "4 - Sair"
    echo "=================="
    echo -n "Digite uma opção: "
    read opcao

    case "$opcao" in 
    
    1)
        read -p "Quantos anos você tem? " idade
        exibir_maioridade $idade
        ;;
    2)
        read -p "Quantas vezes você quer exibir a mensagem de boas vindas? " qtdImpressao
        exibir_boas_vindas $qtdImpressao
        ;;
    3)
        data_atual
        ;;
    4)
        echo "Saindo...."
        ;;
    *)
        echo "Opção invalida, tente novamente."
        ;;
    esac
done