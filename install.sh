#!/bin/bash

if [[ `id -u` -ne 0 ]]
then
    echo "You should be root or use sudo to install this script.."
    exit 1
fi

chmod +x ./mysqloptimizer
cp ./mysqloptimizer /usr/local/bin

if [[ -f /usr/local/bin/mysqloptimizer ]]
then
    echo "mysqloptimizer installed !"
    exit 0
fi

exit 0