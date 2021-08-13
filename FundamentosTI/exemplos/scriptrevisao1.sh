# Autora: Letícia Beatriz Souza
# Descrição: Fazer um script com estrutura de condição.
#!/bin/bash
echo "digite um número"
read num

if [ $num -gt 0 ]
then
        echo "$num é positivo"

elif [ $num -lt 0 ]
then
        echo "$num é negativo"

else
        echo "$num é nulo"

fi
