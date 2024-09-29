#!/bin/bash

echo "Ingrese la contraseña:"
read -s password

echo "Repita la contraseña:"
read -s password2

if [ "$password" != "$password2" ]; then
  echo "Las contraseñas no coinciden"
  exit 1
fi

openssl enc -aes-256-cbc -salt -pbkdf2 -iter 10000 -in .env.local -out .env.local.enc -pass pass:"$password"
openssl enc -aes-256-cbc -salt -pbkdf2 -iter 10000 -in .env -out .env.enc -pass pass:"$password"
