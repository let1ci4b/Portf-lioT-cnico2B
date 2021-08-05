# Autora: Letícia Beatriz Souza
# Descrição: Faça um script que receba como parâmetro um nome de um arquivo ou diretório e diga quais permissões o usuário dono tem.
#!/bin/bash
info=${ls -ld $1}
permr=${info:1:1}
permw=${info:2:1}
permx=${info:3:1}

if [[ $permr == "r" ]]
then
  echo "O arquivo ou diretório tem permissão de leitura!"
else
  echo "O arquivo ou diretório não tem permissão de leitura!"
fi

if [[ $permw == "w" ]]
then
  echo "O arquivo ou diretório tem permissão de escrita!"
else
  echo "O arquivo ou diretório não tem permissão de escrita!"
fi

if [[ $permw == "w" ]]
then
  echo "O arquivo ou diretório tem permissão de execução!"
else
  echo "O arquivo ou diretório não tem permissão de execução!"
fi


  
