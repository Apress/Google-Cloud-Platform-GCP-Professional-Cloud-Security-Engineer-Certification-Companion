# Replace for example:
# YOUR_REPO = the name of your Artifact Registry repo, e.g. ods-build-repo
# LOCATION = your location, e.g. us-central1

gcloud artifacts repositories delete YOUR_REPO \
    --location=LOCATION