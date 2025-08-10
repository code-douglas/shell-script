#! /bin/bash

# Functions
criar_arquivo() {
    echo "[Opção 1] - Criar arquivos"

    local nomeArquivo="$1"
    local counteudoArquivo="$2"

    echo "$counteudoArquivo" > "$nomeArquivo"
    echo "Arquivo: '$nomeArquivo' foi criado com sucesso!"

}
ler_arquivo() {
    echo "[Opção 2] - Ler arquivo linha por linha"

    local arquivoParaLer="$1"
    
    if [ ! -e "$arquivoParaLer" ]; then
        echo "Arquivo selecionado não existe."
        return 1
    elif [ ! -s "$arquivoParaLer" ]; then
        echo "Arquivo existe, mas está vazio."
        return 1
    elif [ ! -f "$arquivoParaLer" ]; then 
        echo "O caminho fornecido não é um arquivo"
        return 1
    fi

    echo "Contéudo do arquivo '$arquivoParaLer':"
    while read -r linha; do
        echo "Linha: $linha"
        echo "-----------------------------------"
    done < "$arquivoParaLer"
}
verificar_existencia() {
    echo "[Opção 3] - Verificar se o diretório existe"

    local diretorioParaVerificar="$1"

    if [ ! -e "$diretorioParaVerificar" ]; then
        echo "Não existe"
    elif [ ! -s "$diretorioParaVerificar" ]; then
        echo "Existe, mas está vazio."
    else
        echo "Existe e possui conteudo."
    fi
}
listar_diretorios() {
    echo "[Opção 4] - Listar apenas diretórios"

    local caminhoParaListar="$1"

    for item in "$caminhoParaListar"/*; do
        if [ -d "$item" ]; then
            echo "$(basename "$item")"
        fi
    done
}

# Show menu;
selected=0
while [ "$selected" -ne 5 ]; do
    echo "Gerenciador de Arquivos Simples"
    echo "-----------------------------------"
    echo "1 - Criar arquivo"
    echo "-----------------------------------"
    echo "2 - Ler arquivo linha por linha"
    echo "-----------------------------------"
    echo "3 - Verificar se o diretorio existe"
    echo "-----------------------------------"
    echo "4 - Listar apenas diretórios"
    echo "-----------------------------------"
    echo "5 - Sair"
    echo "-----------------------------------"
    read -p "Escolha uma opção: " selected

    case $selected in
        1) 
            while true; do
                read -p "Digite o nome do arquivo: " nome

                if [ -z "$nome" ]; then
                    echo "O nome não pode ser vazio."
                elif [ -f "$nome" ]; then
                    echo "Nome do arquivo já existe, tente novamente."
                else
                    break
                fi
            done

            while true; do
                read -p "Digite o conteudo que irá no arquivo: " counteudo

                if [ -z "$counteudo" ]; then
                    echo "O arquivo não pode estar em branco."
                else 
                    break
                fi
            done

            criar_arquivo "$nome" "$counteudo"

            ;;
        2) 
            while true; do
                read -p "Digite o nome/caminho do arquivo que gostaria de ler: " nomeArquivoParaLer

                if ler_arquivo "$nomeArquivoParaLer"; then
                    break
                fi
            done
            ;;
        3) 
            read -p "Digite o caminho do diretorio que gostaria de verificar se existe: " verificarDir

            verificar_existencia "$verificarDir"

            ;;
        4) 
            read -p "Digite o caminho: " caminho

            listar_diretorios "$caminho" 
            ;;
        5) echo "Saindo..." ;;
        *) echo "Opção inválida!" ;;
    esac

done