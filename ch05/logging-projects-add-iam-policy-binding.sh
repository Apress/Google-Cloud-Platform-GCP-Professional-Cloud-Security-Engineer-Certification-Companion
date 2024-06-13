# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# MEMBER = the principal, whose ROLE needs to be granted in the V1 format, e.g.
#     'serviceAccount:service-org-123456789012@gcp-sa-logging.iam.gserviceaccount.com'
# ROLE = the IAM role to be granted to the principal identified in MEMBER, e.g. 
#     'roles/logging.logWriter'
#     'roles/logging.bucketWriter'

gcloud projects add-iam-policy-binding \
   PROJECT_ID \
   --member=MEMBER \
   --role=ROLE


