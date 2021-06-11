# Autora: Letícia Beatriz Souza
# Descrição: Pedir para o usuário nomes de pessoas utilizando loop. Apenas parar de pedir a próxima pessoa quando o usuário digitar um “código de parada” da sua escolha. Colocar esses nomes de pessoas em um vetor e ao final dizer a quantidade de pessoas digitadas.
#!/bin/bash
i=0
x=0
while [ $x -ne 1 ]
do
        echo "Digite um nome:"
        read nome
        if [ $nome = "parar" ]
        then
                x=1
                echo ""
                echo "Nomes digitados: ${vetor[@]}"
                echo "${#vetor[@]} pessoas foram digitadas"
        else
                x=2
                echo ""
        fi
        vetor[$i]=$nome
        i=$(($i+1))
done
