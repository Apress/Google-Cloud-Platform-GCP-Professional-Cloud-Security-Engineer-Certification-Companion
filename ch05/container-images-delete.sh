# Replace for example:
# CONTAINER_PATH = the path to your container, e.g. us.gcr.io/${PROJECT_ID}/hello-world
# DIGEST = the digest of your container image, e.g. $(gcloud container images describe ${CONTAINER_PATH}:latest --format='get(image_summary.digest)')

gcloud container images delete \
    CONTAINER_PATH@DIGEST \
    --force-delete-tags

