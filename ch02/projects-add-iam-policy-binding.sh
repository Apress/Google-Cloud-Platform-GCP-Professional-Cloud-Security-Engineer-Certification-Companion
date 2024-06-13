# Replace for example:
# PROJECT_ID = your-project-id
# YOUR_NEW_OWNER_EMAIL_ADDRESS = your-new-owner@example.com
# USER_DEFINED_SERVICE_ACCOUNT_NAME = your-sa-1

# Add project ownership to a member
gcloud projects add-iam-policy-binding PROJECT_ID \
   --member=”user:YOUR_NEW_OWNER_EMAIL_ADDRESS” \
   --role=”roles/owner”

# Grant the instance Admin role to a service account
gcloud projects add-iam-policy-binding PROJECT_ID \
    --member= "serviceAccount:USER_DEFINED_SERVICE_ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com" \
    --role="roles/compute.instanceAdmin"
