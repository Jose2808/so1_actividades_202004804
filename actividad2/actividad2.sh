#!/usr/bin/env bash

#Undefined variables ar treated as errors
set -o nounset
#If a part of a pipe fails, then the whole pipe fails
set -o pipefail

if ! command -v jq &> /dev/null; then
    sudo apt update
    sudo apt install -y jq
fi

echo 'Ingrese su nombre de usuario de Github: '

read -r GITHUB_USER

if [[ -z "$GITHUB_USER" ]]; then
    GITHUB_USER="Jose2808"
fi

GITHUB_ERROR=$(curl "https://api.github.com/users/""$GITHUB_USER" 2> /dev/null | jq '.message')

if [[ "$GITHUB_ERROR" == '"Not Found"' ]]; then
    GITHUB_USER="Jose2808"
fi

GITHUB_ID=$(curl "https://api.github.com/users/""$GITHUB_USER" 2> /dev/null | jq '.id')
GITHUB_DATE=$(curl "https://api.github.com/users/""$GITHUB_USER" 2> /dev/null | jq '.created_at')

echo 'Hola '"$GITHUB_USER"'. User ID: '"$GITHUB_ID"'.Cuenta fue creada el: '"$GITHUB_DATE."

mkdir -p /tmp/"$(date "+%d-%b-%Y")"

echo 'Hola '"$GITHUB_USER"'. User ID: '"$GITHUB_ID"'.Cuenta fue creada el: '"$GITHUB_DATE." > /tmp/"$(date "+%d-%b-%Y")"/saludos.log
