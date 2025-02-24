#!/bin/bash

read -p "Tipo de figura (rectangle/triangle): " figura

if [[ "$figura" != "rectangle" && "$figura" != "triangle" ]]; then
  echo "Error: Debes introducir 'rectangle' o 'triangle'."
  exit 1
fi

read -p "Introduce la base: " base
read -p "Introduce la altura: " altura

if [ "$base" -lt 0 ] 2>/dev/null || [ "$altura" -lt 0 ] 2>/dev/null; then
  echo "Error: La base y la altura deben ser números no negativos."
  exit 1
fi

if [ "$figura" = "rectangle" ]; then
  area=$((base * altura))
else
  area=$((base * altura / 2))
fi

echo "El área del $figura es: $area."
