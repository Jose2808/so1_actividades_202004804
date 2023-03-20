#!/usr/bin/env bash

#Undefined variables ar treated as errors
set -o nounset
#If a part of a pipe fails, then the whole pipe fails
set -o pipefail

{
echo "Hola $USER!"
echo "Fecha actual:" 
date
echo ""
} >> "/home/$USER/logs"