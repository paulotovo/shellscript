#!/bin/bash
#-----------------------------------------------------
#  Arquivo:       cygwinfixlinks.sh
#  Descricao:     Aplica correção nos link simbolicos
#                 do cgwin ao copiar de maquina para
#                 maquina ou baixar do svn.
#  Autor:         Paulo Tovo
#  Data:          09/06/2018
#-----------------------------------------------------

echo "Entrando no diretorio bin"
cd bin

lstFiles=( "apropos -> whatis.exe" "awk -> gawk.exe" "bzcmp -> bzdiff" "bzegrep -> bzgrep" "bzfgrep -> bzgrep" "bzless -> bzmore"
            "dnsdomainname -> hostname.exe" "domainname -> hostname.exe" "ex -> vi.exe" "lrunzip -> lrzip.exe" "lrzcat -> lrzip.exe"
            "lrzuntar -> lrztar" "lzcat -> xz.exe" "lzcmp -> xzdiff" "lzdiff -> xzdiff" "lzegrep -> xzgrep" "lzfgrep -> xzgrep"
            "lzgrep -> xzgrep" "lzless -> xzless" "lzma -> xz.exe" "lzmore -> xzmore" "makeinfo -> texi2any" "pbunzip2 -> pbzip2"
            "pbzcat -> pbzip2" "rvi -> vi.exe" "unlzma -> xz.exe" "unxz -> xz.exe" "xzcat -> xz.exe" "xzcmp -> xzdiff" "xzegrep -> xzgrep"
            "xzfgrep -> xzgrep" "zipinfo -> unzip" )
            
echo total de arquivos: ${#lstFiles[@]} 
i=0
str=""
while [ $i != ${#lstFiles[@]} ]
do
  str=${lstFiles[$i]}
  lenStr=${#str}
  echo i=$i Item: "($str)" Tamanho da string: $lenStr
  i=$((i+1))
  # procura pelo '>'
  tmp="${str%%>*}"
  if [ "$tmp" != "$str" ]; then
    echo "pos '>': "${#tmp}
    # tamanho da string
    findPos=${#tmp}
  fi 
  # extracao do arquivo
  endPos=$((findPos-2))
  # ${string:position:length}
  strfile=${str:0:endPos}
  # faz um trim para garantir que nao vai ter espaco
  strfile=$(echo $strfile | xargs)
  echo strfile=$strfile
  # extracao do link soma 2 contando espaco
  initPos=$((findPos+2))
  strsymlink=${str:initPos:lenStr} 
  # faz um trim para garantir que nao vai ter espaco
  strsymlink=$(echo $strsymlink | xargs)
  echo strsymlink=$strsymlink
  
  # Para correção dos links, primeiro remove os arquivos antigos
  rm -r $strfile
  echo Aquivo $strfile removido.
  
  # Depois cria o link simbolico
  ln -s $strsymlink $strfile
  echo Link Simbolico do $strfile para $strsymlink feito com sucesso.
done