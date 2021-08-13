# Autora: Letícia Beatriz Souza
# Descrição: Fazer um script que retorne todos os nomes dos usuários do sistema que não são humanos.

#!/bin/bash
val=$(cut -d":" -f3 /etc/passwd)
num_user=0
for i in $val
do
        if [[ $i -gt 0 && $i -lt 1000 ]]
        then
                num_user=$((num_user+1))
        fi
done
echo $num_user
