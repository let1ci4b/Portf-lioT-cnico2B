# Autora: Letícia Beatriz Souza
# Descrição: Fazer um script para imprimir apenas a lista de frutas, sem os números de ordem nem os preços. 
#!/bin/bash
var=$(cut -d" " -f2 lista_frutas)
echo "$var"
