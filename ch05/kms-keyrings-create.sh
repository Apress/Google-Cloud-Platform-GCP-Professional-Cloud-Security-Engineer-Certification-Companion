# Replace for example:
# LOCATION = the location of your key ring, e.g. global
# KEY_RING = the name of your key ring, e.g. binauthz-keys

gcloud kms keyrings create KEY_RING \
    --location LOCATION