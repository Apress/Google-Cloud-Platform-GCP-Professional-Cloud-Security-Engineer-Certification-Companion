# Replace for example:
# KEY = the name of your cryptographic key, e.g. dlp-key
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.
# KEY_RING = the name of your key ring, e.g. dlp-keyring
# ROTATION_PERIOD = the cycle used by auto rotation, e.g. 100d
# NEXT_ROTATION_DATETIME = the date and time when next rotation is scheduled, e.g. 2024-06-28T01:02:03

gcloud kms keys update KEY \
    --location=LOCATION \
    --keyring=KEY_RING \
    --rotation-period=ROTATION_PERIOD \
    --next-rotation-time=NEXT_ROTATION_DATETIME