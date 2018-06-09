#!/bin/bash
#-----------------------------------------------------
#  Arquivo:       string01.sh
#  Descricao:     Exemplo para identificação de caracter
#                 dentro da string e extração.
#  Autor:         Paulo Tovo
#  Data:          09/06/2018
#-----------------------------------------------------
export str="paulo tovo"
echo $str | grep -b -o t

export str="paulo ->"
echo $str | grep -b -o '>'

# extração só da posição
echo "RAMSITALSKHMAN|1223333" | grep -aob '|' | grep -oE '[0-9]+'

#pos=echo "RAMSITALSKHMAN|1223333" | grep -aob '|' | grep -oE '[0-9]+'
#echo posicao=$pos

# exemplo puro sem usar processo externo tipo grep
str="RAMSITALSKHMAN|1223333"
tmp="${str%%|*}"
if [ "$tmp" != "$str" ]; then
  echo pos=${#tmp}
fi
 
# faz trim na string 
str=$(echo "   lol  " | xargs)
echo str=$str tamanho=${#str}

# trim com conteudo variavel
string="   lol  "
str=$(echo $string | xargs)
echo str=$str tamanho=${#str}