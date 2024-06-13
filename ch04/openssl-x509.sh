# Replace for example:
# GOOGLE_PUBLIC_KEY_PATHFILE = the pathfile to the Google public key part of the Google X.509 in PEM format, e.g. ./pubkey.pem

openssl x509 \
    -pubkey \
    -noout \
    -in google-cloud-csek-ingress.pem \
> GOOGLE_PUBLIC_KEY_PATHFILE