# Replace for example:
# PROJECT_ID = your-project-id
# VM_NAME = vm1
# USER_DEFINED_SERVICE_ACCOUNT_NAME = your-sa-1

# Attach a service account on a new instance
gcloud compute instances create VM_NAME \
    --service-account USER_DEFINED_SERVICE_ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com \
    --scopes=”https://www.googleapis.com/auth/cloud-platform”

# Attach a service account on an existing instance
gcloud compute instances set-service-account VM_NAME \
    --service-account USER_DEFINED_SERVICE_ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com \
    --scopes=”https://www.googleapis.com/auth/cloud-platform”
