# Replace for example:
# LOG_BUCKET_NAME = the name of your new log bucket, e.g. org-gce-logs-bucket
# LOCATION = the location of your log bucket, e.g. global
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120

gcloud logging buckets create LOG_BUCKET_NAME \
   --location=LOCATION \
   --project=PROJECT_ID
