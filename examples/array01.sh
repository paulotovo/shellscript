#!/bin/bash
#-----------------------------------------------------
#  Arquivo:       array01.sh
#  Descricao:     Exemplo de manipulação de array            
#  Autor:         Paulo Tovo
#  Data:          09/06/2018
#-----------------------------------------------------

echo "Entrando no diretorio /usr/bin"
cd /usr/bin

#echo "Deletando Links antigos"

#DISTROS=( "Debian" "Trisquel" "Ubuntu" "RedHat")
#rm -r awk

#ln -s gawk.exe awk

lstFiles=( "apropos -> whatis.exe" "awk -> gawk.exe" "bzcmp -> bzdiff" "bzegrep -> bzgrep" "bzfgrep -> bzgrep" "bzless -> bzmore"
            "dnsdomainname -> hostname.exe" "domainname -> hostname.exe" "ex -> vi.exe" "lrunzip -> lrzip.exe" "lrzcat -> lrzip.exe"
            "lrzuntar -> lrztar" "lzcat -> xz.exe" "lzcmp -> xzdiff" "lzdiff -> xzdiff" "lzegrep -> xzgrep" "lzfgrep -> xzgrep"
            "lzgrep -> xzgrep" "lzless -> xzless" "lzma -> xz.exe" "lzmore -> xzmore" "makeinfo -> texi2any" "pbunzip2 -> pbzip2"
            "pbzcat -> pbzip2" "rvi -> vi.exe" "unlzma -> xz.exe" "unxz -> xz.exe" "xzcat -> xz.exe" "xzcmp -> xzdiff" "xzegrep -> xzgrep"
            "xzfgrep -> xzgrep" "zipinfo -> unzip" )
            
echo total de arquivos: ${#lstFiles[@]} 
i=0
while [ $i != ${#lstFiles[@]} ]
do
  echo i=$i Item: ${lstFiles[$i]}
  i=$((i+1))
done



