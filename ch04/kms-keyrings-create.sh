# Replace for example:
# KEY_RING = the name of your key ring, e.g. dlp-keyring
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.

gcloud kms keyrings create KEY_RING \
    --location LOCATION