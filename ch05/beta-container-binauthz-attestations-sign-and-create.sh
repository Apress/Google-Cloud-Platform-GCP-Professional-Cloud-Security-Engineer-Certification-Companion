# Replace for example:
# CONTAINER_PATH = the path to your container, e.g. us.gcr.io/${PROJECT_ID}/hello-world
# DIGEST = the digest of your container image, e.g. $(gcloud container images describe ${CONTAINER_PATH}:latest --format='get(image_summary.digest)')
# ATTESTOR_ID = the ID of your attestor, e.g. gianni-binauthz-attestor
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# LOCATION = the location where your key ring and cryptographic keys material will be stored, e.g. "global", "us-east1", and so on.
# KEY_RING = the name of your key ring, e.g. binauthz-keys
# KEY = the name of your cryptographic key, e.g. gianni-attestor-key
# KEY_VERSION = the version of your asymm signing key, e.g. 1

gcloud beta container binauthz attestations sign-and-create  \
    --artifact-url="CONTAINER_PATH@DIGEST" \
    --attestor=ATTESTOR_ID \
    --attestor-project=PROJECT_ID \
    --keyversion-project=PROJECT_ID \
    --keyversion-location=LOCATION \
    --keyversion-keyring=KEY_RING \
    --keyversion-key=KEY \
    --keyversion=KEY_VERSION

