# Replace for example:
# USER_DEFINED_SERVICE_ACCOUNT_NAME = your-sa-1
# DESCRIPTION = "Your service account 1"

gcloud iam service-accounts create \
   USER_DEFINED_SERVICE_ACCOUNT_NAME \
   --display-name=DESCRIPTION
