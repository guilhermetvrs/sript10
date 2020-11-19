#!/bin/bash

read -p "digite a para: remover  todas as letras ou digite b para remover todos os digitos de um arquivo ou digite c para remover todos os caracteres especiais. " aux
read -p "informe o arquivo desejado" arq

if [ $aux = 'a' ]; then
	cat $arq | sed -E 's/[a-zA-Z]//g'
	
elif [ $aux = 'b' ]; then
	sed -E 's/[0-9]//g' < $arq

elif [ $aux = 'c' ]; then
	cat $arq | sed -E 's/[^0-9A-Za-z]//g'

else

	echo "opcao invalida"
	./questao1.sh
fi
