# Autora: Letícia Beatriz Souza
# Descrição: Fazer um script para imprimir a lista de frutas com seus respectivos preços, em ordem alfabética.
#!/bin/bash
var=$(cut -d" " -f2,3 lista_frutas | sort)
echo "$var"
