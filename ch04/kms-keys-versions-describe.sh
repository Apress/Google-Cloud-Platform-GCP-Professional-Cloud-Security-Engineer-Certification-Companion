# Replace for example:
# KEY_VERSION = the version of the key you want to describe, e.g. 1
# KEY = the name of your cryptographic key
# KEY_RING = the name of your key ring, e.g. kms-keyring
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.

gcloud kms keys versions describe KEY_VERSION \
    --key KEY \
    --keyring KEY_RING \
    --location LOCATION