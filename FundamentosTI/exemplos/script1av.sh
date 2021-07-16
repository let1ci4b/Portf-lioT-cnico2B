#!/bin/bash
echo "digite o nome do arquivo"
read arq
var=$(ls -l $arq)
echo "$var"
