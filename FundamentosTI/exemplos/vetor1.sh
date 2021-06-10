# Autora: Letícia Beatriz Souza
# Descrição: Inicializar um vetor com 3 nomes de pessoa da sua escolha. Fazer um loop (utilizando for) para escrever para cada uma das pessoa “Oi, eu sou ____ !” 
#!/bin/bash
vetor[0]="ash"
vetor[1]="alex"
vetor[2]="hunter"
for i in ${vetor[@]}
do
  echo "Oi, eu sou $i"
done
