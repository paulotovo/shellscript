#!/bin/bash
#-----------------------------------------------------
#  Arquivo:       checkout_source.sh
#  Descricao:     Checkout the source files of OpenSSL
#                 
#  Autor:         Paulo Tovo
#  Data:          11/06/2018
#-----------------------------------------------------

echo " *** "
echo " *** SVN Checkout OpenSSL for Linux "
echo " *** "

URL_SVN=https://url
OPENSSL_VERSION=openssl-1.0.2o

SOURCE_DIR=source/$OPENSSL_VERSION

echo " *** Start checkout and updating $SOURCE_DIR ... "
svn checkout $URL_SVN $SOURCE_DIR

echo " *** "
echo " *** Operation completed successfully. "
echo " *** "