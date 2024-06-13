# Replace for example:
# KEY = the name of your cryptographic key, e.g. gianni-attestor-key
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.
# KEY_RING = the name of your key ring, e.g. binauthz-keys
# PURPOSE = asymmetric-encryption | asymmetric-signing | encryption | mac | raw-encryption
# PROTECTION_LEVEL = software | hsm | external | external-vpc
# DEFAULT_ALGORITHM = ec-sign-p256-sha256 | rsa-decrypt-oaep-4096-sha512 | ... see https://cloud.google.com/sdk/gcloud/reference/kms/keys/create

gcloud kms keys create KEY \
    --keyring=KEY_RING \
    --location=LOCATION \
    --purpose asymmetric-signing \
    --default-algorithm="ec-sign-p256-sha256"