# Replace for example:
# LOG_BUCKET_NAME = the name of your new log bucket, e.g. org-gce-logs-bucket
# LOCATION = the location of your log bucket, e.g. global
# RETENTION_DAYS = the retention period in days, e.g. 365

gcloud logging buckets update LOG_BUCKET_NAME \
   --location=LOCATION \
   --retention-days=RETENTION_DAYS
