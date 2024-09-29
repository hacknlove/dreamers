#!/bin/bash

echo "Ingrese la contraseña:"
read -s password

openssl enc -d -aes-256-cbc -salt -pbkdf2 -iter 10000 -in .env.local.enc -out .env.local -pass pass:"$password"
openssl enc -d -aes-256-cbc -salt -pbkdf2 -iter 10000 -in .env.enc -out .env -pass pass:"$password"
