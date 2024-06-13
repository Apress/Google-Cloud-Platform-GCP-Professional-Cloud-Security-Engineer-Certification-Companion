# Replace for example:
# POOL_ID = the name of your CA pool
# TIER = devops | enterprise

gcloud privateca pools create POOL_ID \
    --tier TIER