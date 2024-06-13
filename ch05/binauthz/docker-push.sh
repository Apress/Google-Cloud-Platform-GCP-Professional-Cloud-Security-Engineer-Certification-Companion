# Replace for example:
# CONTAINER_PATH = the path to your container, e.g. us.gcr.io/${PROJECT_ID}/hello-world

gcloud auth configure-docker –quiet
docker push $CONTAINER_PATH