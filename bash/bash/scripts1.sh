#!/bin/bash

#
if [ $# -ne 1 ]; then
  echo "Uso: $0 <número>"
  exit 1
fi

# Comprobar si es par o impar
if [ $(( $1 % 2 )) -eq 0 ]; then
  echo "El número $1 es par."
else
  echo "El número $1 es impar."
fi

