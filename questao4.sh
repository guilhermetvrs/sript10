#!/bin/bash

read -p " insira o nome do arquivo : " arq

cat $arq | sed -E 's/([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})/\1.\2.\3-\4/g'

