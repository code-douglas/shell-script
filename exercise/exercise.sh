#! /bin/bash

echo "Digite o seu nome: "
read nome

echo "Digite sua idade: "
read idade

if [ $idade -ge 18 ]; then
    echo "Você é maior de idade."
else
    echo "Você é menor de idade."
fi

echo "Quantas vezes deseja imprimir a mensagem de boas-vindas?"
read imprimir

contador=1

while [ $contador -le $imprimir ]; do
    echo "Boas vindas $nome"
    contador=$((contador + 1))
done