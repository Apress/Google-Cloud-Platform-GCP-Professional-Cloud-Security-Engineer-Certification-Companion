# Replace for example:
# KEY = the name of your cryptographic key
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.
# KEY_RING = the name of your key ring, e.g. dlp-keyring
# FORMAT = config | csv | default | diff | disable | flattened | get | json | list | multi | none | object | table | text | value | yaml

gcloud kms keys list \
    --location LOCATION \
    --keyring KEY_RING \
    --format FORMAT