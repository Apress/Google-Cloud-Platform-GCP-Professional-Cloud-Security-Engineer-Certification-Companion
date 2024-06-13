# Replace for example:
# GKE_CLUSTER_NAME = the name of your GKE cluster, e.g. binauthz-cluster
# BINAUTHZ_EVALUATION_MODE = project-singleton-policy-enforce | disabled
# ZONE = the zone where your GKE cluster lives, e.g. us-central1-a

gcloud container clusters create GKE_CLUSTER_NAME \
    --binauthz-evaluation-mode=BINAUTHZ_EVALUATION_MODE \
    --zone ZONE