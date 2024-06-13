# Replace for example:
# KEY = the name of your cryptographic key
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.
# KEY_RING = the name of your key ring, e.g. kms-keyring

gcloud kms keys describe KEY \
    --keyring KEY_RING \
    --location LOCATION