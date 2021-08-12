# Autora: Letícia Beatriz Souza
# Descrição: Faça um script que me retorne todos os nomes dos usuários do sistema. (Até os que não são seres humanos)
#!/bin/bash
var=$(cut -d: -f1 /etc/passwd)
echo "Os usuários do sistema são:"
echo $var
