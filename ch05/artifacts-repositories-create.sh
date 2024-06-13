# Replace for example:
# YOUR_REPO = the name of your Artifact Registry repo, e.g. ods-build-repo
# REPO_FORMAT = apt | docker | go | kfp | maven | npm | python | yum
# LOCATION = your location, e.g. us-central1
# DESCRIPTION = a short description, e.g. "Repository for scan and build"

gcloud artifacts repositories create YOUR_REPO \
    --repository-format=REPO_FORMAT \
    --location=LOCATION \
    --description=DESCRIPTION