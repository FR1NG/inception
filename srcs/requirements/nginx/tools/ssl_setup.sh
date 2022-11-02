#!/bin/bash

# Generate a passphrase
openssl rand -base64 48 > passphrase.txt

# Generate a Private Key
openssl genrsa -aes128 -passout file:passphrase.txt -out /tools/nginx/tmp.key 2048

# Generate a CSR (Certificate Signing Request)
openssl req -new -passin file:passphrase.txt -key /tools/nginx/tmp.key -out /tools/nginx/tmp.crt \
     -subj "/C=MA/O=krkr/OU=Domain Control Validated/CN=hchakoub.42.fr"

# Remove Passphrase from Key
mv /tools/nginx/tmp.key /tools/nginx/hchakoub.42.fr.key
openssl rsa -in /tools/nginx/hchakoub.42.fr.key -passin file:passphrase.txt -out /tools/nginx/tmp.key

# Generating a Self-Signed Certificate for 100 years
openssl x509 -req -days 36500 -in /tools/nginx/tmp.crt -signkey /tools/nginx/tmp.key -out /tools/nginx/tmp.crt

mv /tools/nginx/tmp.crt /etc/ssl/certs/hchakoub.42.fr.crt
mv /tools/nginx/tmp.key /etc/ssl/private/hchakoub.42.fr.key 


