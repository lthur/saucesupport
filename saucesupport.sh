#!/bin/sh

localIp="127.0.0.1"
aliases=(
    'local.mercadopago.com'
    'local.mercadopago.com.ar'
    'local.mercadopago.com.br'
    'local.mercadopago.com.co'
    'local.mercadopago.com.mx'
    'local.mercadopago.com.ve'
    'local.mercadopago.cl'
)

for alias in "${aliases[@]}"
do
    line="${localIp} ${alias}"
    isPresent=$(grep -E "(^|\s)${line}($|\s)" /etc/hosts)
    if [ -z "${isPresent}" ]; then echo "${line}" >> /etc/hosts; fi
done
