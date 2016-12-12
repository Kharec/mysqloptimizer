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
else
    echo "mysqloptimizer not installed, there was problem.."
fi

exit 0