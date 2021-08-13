#!/bin/bash
ls
echo "escolha um arquivo ou diretorio"
read arq

ls -ld $arq | cut -c8
read permr

ls -ld $arq | cut -c9
read permw

ls -ld $arq | cut -c10
read permx

if [[ $permr == "r" ]]
then
  echo "Outros usuários tem permissão de leitura!"
else
  echo "Outros usuários não tem permissão de leitura!"
fi

if [[ $permw == "w" ]]
then
  echo "Outros usuários tem permissão de escrita!"
else
  echo "Outros usuários não tem permissão de escrita!"
fi

if [[ $permx == "x" ]]
then
  echo "Outros usuários tem permissão de execução!"
else
  echo "Outros usuários não tem permissão de execução!"
f#!/bin/bash
ls
echo "escolha um arquivo ou diretorio"
read arq

ls -ld $arq | cut -c8
read permr

ls -ld $arq | cut -c9
read permw

ls -ld $arq | cut -c10
read permx

if [[ $permr == "r" ]]
	then
		  echo "Outros usuários tem permissão de leitura!"
		  else
			    echo "Outros usuários não tem permissão de leitura!"
			    fi

			    if [[ $permw == "w" ]]
				    then
					      echo "Outros usuários tem permissão de escrita!"
					      else
						        echo "Outros usuários não tem permissão de escrita!"
							fi

							if [[ $permx == "x" ]]
								then
									  echo "Outros usuários tem permissão de execução!"
									  else
										    echo "Outros usuários não tem permissão de execução!"
										    fii
