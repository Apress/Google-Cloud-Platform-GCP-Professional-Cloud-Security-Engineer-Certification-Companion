# Replace for example:
# SINK_NAME = the name of your new sink, e.g. org-gce-logs-sink
# ORGANIZATION_ID = the ID of your organization, e.g. 123456789012
# This command will return the writerIdentity in ther form of of serviceAccount:service-org-123456789012@gcp-sa-logging.iam.gserviceaccount.com

gcloud logging sinks describe SINK_NAME \
   --organization=ORGANIZATION_ID

