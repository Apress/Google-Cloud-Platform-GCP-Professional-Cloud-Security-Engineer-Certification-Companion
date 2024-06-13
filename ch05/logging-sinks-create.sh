# Replace for example:
# SINK_NAME = the name of your new sink, e.g. org-gce-logs-sink
# DESTINATION = the sink destination in a resource URI format, e.g. logging.googleapis.com/projects/evocative-hour-351120/locations/global/buckets/org-gce-logs-bucket
# LOG_FILTER = the filter for your source logs to be aggregated into the sink, e.g. 'resource.type="gce_instance"'
# DESCRIPTION = a short description, e.g. "All gce logs from my org log sink"
# ORGANIZATION_ID = the ID of your organization, e.g. 123456789012

gcloud logging sinks create SINK_NAME \
   DESTINATION \
   --log-filter=LOG_FILTER \
   --description=DESCRIPTION \
   --organization=ORGANIZATION_ID \
   --include-children

