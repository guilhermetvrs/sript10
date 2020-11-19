#!/bin/bash

read -p "digite o nome do arquivo que vc quer ter acesso" arq

cat $arq |sed -E 's/[0-9]{5}-[0-9]{4}/"**CENSURADO**"/g'
