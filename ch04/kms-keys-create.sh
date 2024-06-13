# Replace for example:
# KEY = the name of your cryptographic key, e.g. dlp-key
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.
# KEY_RING = the name of your key ring, e.g. dlp-keyring
# PURPOSE = asymmetric-encryption | asymmetric-signing | encryption | mac | raw-encryption
# PROTECTION_LEVEL = software | hsm | external | external-vpc
# DEFAULT_ALGORITHM = rsa-decrypt-oaep-4096-sha512 | ... see https://cloud.google.com/sdk/gcloud/reference/kms/keys/create

gcloud kms keys create KEY \
    --location=LOCATION \
    --keyring=KEY_RING \
    --purpose=PURPOSE \
    --protection-level=PROTECTION_LEVEL \ 
    --default-algorithm=DEFAULT_ALGORITHM