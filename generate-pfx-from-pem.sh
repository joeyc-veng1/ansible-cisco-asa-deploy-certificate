#!/bin/bash

CA=/path/to/your/intermediate/and/root/certificate/chain/file
CER=/path/to/your/certificate/file
KEY=/path/to/your/private/key
OUT=/path/to/write/the/pfx/file
PASSWORD='SET YOUR PFX PASSWORD HERE'

openssl pkcs12 \
-password pass:${PASSWORD} \
-export \
-inkey ${KEY} \
-in ${CER} \
-certfile ${CA} \
-out ${OUT}
