# Replace for example:
# PROJECT_ID = your-project-id
# YOUR_EMAIL_ADDRESS = your-name@example.com
# USER_DEFINED_SERVICE_ACCOUNT_NAME = your-sa-1

gcloud auth login YOUR_EMAIL_ADDRESS

gcloud auth print-access-token \
    --impersonate-service-account= \
    USER_DEFINED_SERVICE_ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com
