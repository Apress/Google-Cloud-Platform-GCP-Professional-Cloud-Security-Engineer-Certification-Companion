# Replace for example:
# GKE_CLUSTER_NAME = the name of your GKE cluster, e.g. binauthz-cluster
# ZONE = the zone where your GKE cluster lives, e.g. us-central1-a

gcloud container clusters get-credentials \
    GKE_CLUSTER_NAME \
    --zone ZONE