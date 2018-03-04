#!/bin/sh

echo "Encrypt $1 using password (into $1.enc):"
read -rs PWD
openssl aes-256-cbc -in $1 -out $1.enc -pass env:PWD
