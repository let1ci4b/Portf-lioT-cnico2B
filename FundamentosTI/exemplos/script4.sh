# Autora: Letícia Beatriz Souza
# Descrição: Escreva um algoritmo para imprimir os números de 1 (inclusive) a 10 (inclusive) em ordem decrescente.
#!/bin/bash
i=1
while [ $i -lt 11 ]
do
  echo "- $1"
  i=$((i+1))
done
