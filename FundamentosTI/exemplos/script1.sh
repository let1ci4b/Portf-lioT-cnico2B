# Autora: Letícia Beatriz Souza
# Descrição: Ler um valor e escrever se é positivo ou negativo (considere o valor zero como positivo).
#!/bin/bash
echo "Digite um numero"
read num
if [ $num -lt 0 ]
  then
  echo "$num e negativo"
else 
echo "$num e positivo"
fi
