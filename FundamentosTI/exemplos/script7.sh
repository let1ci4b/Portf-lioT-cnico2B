# Autora: Letícia Beatriz Souza
# Descrição: Faça um algoritmo para ler o preço de 15 produtos, calcular e escrever:
# - o maior preço lido
# - a média aritmética dos preços dos produtos 
#!/bin/bash
soma=0
maior=0
for i in $(seq 1 15)
do
  echo "O preço do $i produto:"
  read val
  if [ $val -gt $maior ]
  then
    maior=$val
   fi
   soma=$((soma+i))
done
