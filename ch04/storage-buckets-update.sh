# Replace for example:
# BUCKET_NAME = the name of your bucket
# LIFECYCLE_CONFIG_FILE = the pathfile to your object lifecycle policy, which will be enforced on all objects of your bucket

gcloud storage buckets update gs://BUCKET_NAME \
    --lifecycle-file=LIFECYCLE_CONFIG_FILE
