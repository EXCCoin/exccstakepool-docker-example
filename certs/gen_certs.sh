#!/usr/bin/env bash

for i in openssl
do
    if [[ -z "`which $i`" ]]
    then
        echo "$i is missing."
        exit 100
    fi
done

for host in exccd exccwallet exccwallet2 stakepoold stakepoold2
do
    if [[ ! -f "${host}.cert" || ! -f "${host}.key" ]]
    then
        echo "Generating certificate for ${host}..."
        openssl req -config <(cat ./openssl.conf | sed "s/<<DOMAIN_NAME>>/${host}/g") \
            -x509 -out ${host}.cert \
            -newkey rsa:4096 -keyout ${host}.key -nodes
    else
        echo "Certificate for ${host} already exists."
    fi
done
