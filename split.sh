#!/bin/bash
#-----------------------------------------------------
#  Arquivo:       split.sh
#  Descricao:     Like a strtok or split
#                 Split string into tokens
#                 
#  Autor:         Paulo Tovo
#  Data:          23/06/2018
#-----------------------------------------------------

echo " *** "
echo " *** Split string into tokens in Shell Script "
echo " *** "

strvar="192.168.0.1"
echo " *** String: $strvar"

echo " *** Delimiter: ."
tokens=( ${strvar//[.]/ } )
echo " *** Number of extracted tokens: ${#tokens[@]} "

i=0
strToken=""
while [ $i != ${#tokens[@]} ]
do
  strToken=${tokens[$i]}
  echo " *** Token: $strToken"
  i=$((i+1))
done

echo " *** "
echo " *** Operation completed successfully. "
echo " *** "