#!/bin/sh

echo "Decrypt $1 using password (into stdout):"
read -rs PWD
openssl aes-256-cbc -d -in $1 -pass env:PWD

