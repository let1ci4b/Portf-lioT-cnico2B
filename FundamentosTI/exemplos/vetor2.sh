# Autora: Letícia Beatriz Souza
# Descrição: Inicializar um vetor com 3 nomes de pessoa da sua escolha. Fazer um loop (utilizando while) para escrever para cada uma das pessoa “Oi, eu sou ____ !” 
#!/bin/bash
vetor[0]="ash"
vetor[1]="alex"
vetor[2]="hunter"
tam_vetor=${#vetor[@]}
i=0
while [ $i -lt $tam_vetor ]
do
        echo "Oi, eu sou ${vetor[$i]}"
        i=$((i+1))
done
