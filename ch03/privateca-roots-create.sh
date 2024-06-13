# Replace for example:
# POOL_ID = the name of your CA pool
# CA_ID = the name of the root CA
# SUBJECT = the X.501 name of the certificate subject, e.g. "CN=Example Prod Root CA, O=Google"

gcloud privateca roots create CA_ID \
    --pool POOL_ID \
    --subject SUBJECT
