# Replace for example:
# KEY = the name of your cryptographic key, e.g. kms-key
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.
# KEY_RING = the name of your key ring, e.g. kms-keyring
# PLAINTEXT_PATHFILE = the pathname to your plaintext file you want to encrypt, e.g. ./input/plaintext
# CIPHERTEXT_PATHFILE = the pathname to your ciphertext file resulting from the encryption, e.g. ./output/ciphertext

gcloud kms encrypt \
    --key=KEY \
    --location=LOCATION \
    --keyring=KEY_RING \
    --plaintext-file=PLAINTEXT_PATHFILE \
    --ciphertext-file=CIPHERTEXT_PATHFILE