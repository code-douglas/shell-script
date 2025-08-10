# Shell Script

### 🧠 Conceitos-chave aqui:

| Conceito      | Descrição                                 |
| ------------- | ----------------------------------------- |
| `read`        | Lê dados digitados pelo usuário           |
| `echo`        | Exibe mensagens no terminal               |
| `$variavel`   | Forma de acessar o valor armazenado       |
| `#!/bin/bash` | Define o interpretador usado (Bash Shell) |

### 🔍 Operadores de comparação:

| Finalidade         | Operador | Exemplo          |
| ------------------ | -------- | ---------------- |
| Igualdade (número) | `-eq`    | `[ $x -eq $y ]`  |
| Diferença          | `-ne`    | `[ $x -ne $y ]`  |
| Maior que          | `-gt`    | `[ $x -gt 10 ]`  |
| Menor que          | `-lt`    | `[ $x -lt 5 ]`   |
| Maior ou igual     | `-ge`    | `[ $x -ge 18 ]`  |
| Menor ou igual     | `-le`    | `[ $x -le 100 ]` |

### ✍️ Resumo:

| Palavra-chave | Função                                 |
| ------------- | -------------------------------------- |
| `if`          | Verifica uma condição                  |
| `elif`        | Outra condição (opcional)              |
| `else`        | Executado se nenhuma condição for true |
| `fi`          | Finaliza o bloco de decisão            |

### 🧠 Case - Sintax

```
read -p "Digite um número (1 a 3): " numero

case $numero in
  1)
    echo "Você escolheu UM"
    ;;
  2)
    echo "Você escolheu DOIS"
    ;;
  3)
    echo "Você escolheu TRÊS"
    ;;
  *)
    echo "Opção inválida"
    ;;
esac
``` 

```
contador=1
while [ $contador -le $imprimir ]; do
    echo "Boas vindas $nome"
    contador=$((contador + 1))
done
```

| Variável | Significado                                       |
| -------- | ------------------------------------------------- |
| `$0`     | Nome do script (com o caminho se houver).         |
| `$1`     | Primeiro argumento.                               |
| `$2`     | Segundo argumento.                                |
| `$3`     | Terceiro argumento.                               |
| `...`    | Continua assim até o número máximo de argumentos. |
| `$#`     | Número total de argumentos passados (contagem).   |
| `$@`     | Todos os argumentos como **lista**.               |
| `$*`     | Todos os argumentos como **único texto**.         |
| `$$`     | PID (Process ID) do script.                       |
| `$?`     | Código de saída do último comando executado.      |
| `$!`     | PID do último processo em segundo plano.          |
