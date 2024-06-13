# Replace for example:
# CONTAINER_PATH = the path to your container, e.g. us.gcr.io/${PROJECT_ID}/hello-world
# DIGEST = the digest of your container image, e.g. $(gcloud container images describe ${CONTAINER_PATH}:latest --format='get(image_summary.digest)')

kubectl create deployment hello-world \
    --image=CONTAINER_PATH

# Upon attestation
kubectl create deployment hello-world-signed \
    --image="CONTAINER_PATH@DIGEST"

kubectl get pods