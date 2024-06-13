# Replace for example:
# POOL_ID = the name of your CA pool
# SUBJECT = the X.501 name of the certificate subject, e.g. "CN=Example Prod,O=Google"
# KEY_OUTPUT_FILE = your private key pathname in PEM format. Ensure to keep it safe.
# CERT_OUTPUT_FILE = your PEM-encoded certificate chain pathname (ordered from leaf to root).

gcloud privateca certificates create \
    --issuer-pool POOL_ID \
    --subject SUBJECT \
    --generate-key \
    --key-output-file=KEY_OUTPUT_FILE \
    --cert-output-file=CERT_OUTPUT_FILE
