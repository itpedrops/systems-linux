How to install apache by manual 
## Version 2.4.25

## Install pre-req for HTTPD2.4
yum install gcc openssl-devel apr-devel apr-util-devel pcre-devel

## Go directory /usr/src
cd /usr/src

## Download TAR.GZ for APACHE.ORG ,
wget http://archive.apache.org/dist/httpd/httpd-2.4.25.tar.gz

#### FOR DIFERENT installation check -- http://archive.apache.org/dist/httpd/

## Descompact Archive httpd
tar -xvf httpd-2.4.25.tar.gz

## ATTENTION IN APACHE 2.4.25 is pre-req for installation APR and APR-UTIL 1.40 or superior.
## IN Centos 6.9 latest available for APR and APR-UTIL is 1.39.. is necessary for download installation manually

## Download LATEST APR FOR APACHE
- wget http://ftp.unicamp.br/pub/apache//apr/apr-1.6.2.tar.gz
- wget http://ftp.unicamp.br/pub/apache//apr/apr-util-1.6.0.tar.gz

## Descompact APR and APR-UTILS
- tar -xvf apr-util-1.6.0.tar.gz
- tar -xvf apr-1.6.2.tar.gz

## Move location apr and apr utils for COMPILE BY APACHE SCRIPT
- mv apr-1.6.2 /usr/src/httpd-2.4.25/srclib/apr
- mv apr-util-1.6.0/ /usr/src/httpd-2.4.25/srclib/apr-util

## Go directory apache for installation
- cd httpd-2.4.25/

## Init installation apache for configure
- ./configure --enable-ssl --enable-so --prefix=/etc/apache2 --with-included-apr

## prepar
- make

## prepar and install apache
make install


## Other recomendations
## Service apache default
- /etc/apache2/bin/apachectl start
- /etc/apache2/bin/apachectl stop
- /etc/apache2/bin/apachectl status

## PATH installation apace directory

- /etc/apache2

## Confi-file apache default
- /etc/apache2/conf/httpd.conf
