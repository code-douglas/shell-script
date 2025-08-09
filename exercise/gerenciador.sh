#! /bin/bash

opcao=0

while [ $opcao -ne 5 ]; do
    echo "1 - Criar um arquivo"
    echo "2 - Ler arquivo linha a linha"
    echo "3 - Verificar se um arquivo existe e se está vazio"
    echo "4 - Listar apenas diretórios de um caminho"
    echo "5 - Sair"
    echo "======================================================"
    echo -n "Escolha uma opção: "
    read opcao

    case $opcao in 
        1)
            while true; do
                read -p "Digite o nome do arquivo: " nomeArquivo

                if [ -z "$nomeArquivo" ]; then
                    echo "O nome não pode ser vazio."
                elif [ -f "$nomeArquivo" ]; then
                    echo "Nome do arquivo já existe, tente novamente."
                else
                    break
                fi
            done
            
            while true; do
                read -p "Digite o conteudo que irá no arquivo: " conteudoArquivo

                if [ -z "$conteudoArquivo" ]; then
                    echo "O arquivo não pode estar em branco."
                else 
                    break
                fi
            done

            echo "$conteudoArquivo" > "$nomeArquivo"
            echo "Arquivo '$nomeArquivo' criado com sucesso."
        ;;
        2)
            while true; do
                read -p "Digite o nome do arquivo/diretorio do arquivo que gostaria de ler. " leituraArquivo

                if [ ! -s "$leituraArquivo" ]; then
                    echo "O arquivo selecionado não existe"
                elif [ ! -s "$leituraArquivo" ]; then
                    echo "O arquivo existe, mas está vazio."
                else 
                    while read linha; do
                        echo "Linha: $linha"
                    done < "$leituraArquivo"
                    break
                fi
            done
        ;;
        3)
            while true; do
                read -p "Digite o nome ou diretorio que você gostaria de verificar. " verificacaoDirArquivo

                if [ ! -e "$verificacaoDirArquivo" ]; then
                    echo "Não existe"
                elif [ ! -s "$verificacaoDirArquivo" ]; then
                    echo "Existe, mas está vazio."
                else
                    echo "Existe e possui conteudo."
                fi
                break
            done
        ;;
        4)
            read -p "Digite o caminho: " caminho

            for item in "$caminho"/*; do
                if [ -d "$item" ]; then
                    echo "$(basename "$item")"
                fi
            done
        ;;
        5)
            echo "Saindo..."
        ;;
        *)
            echo "Opção selecionada é invalida."
        ;;
    esac
done