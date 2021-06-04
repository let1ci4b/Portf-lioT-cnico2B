# Autora: Letícia Beatriz Souza
# Descrição: Escreva um algoritmo para imprimir os números de 1 (inclusive) a 10 (inclusive) em ordem crescente.
#!/bin/bash
i=10
while [ $i -ge 1 ]
do
  echo "- $i"
  i=$((i-1))
done
