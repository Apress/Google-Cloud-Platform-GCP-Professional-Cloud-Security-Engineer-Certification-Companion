# Replace for example:
# USER_DEFINED_SERVICE_ACCOUNT_NAME = your-sa-1
# PROJECT_ID = your-project-id
# YOUR_SA_IMPERSONATOR_USER_EMAIL_ADDRESS = your-name@example.com
# YOUR_SA_IMPERSONATOR_AGENT_EMAIL_ADDRESS = service-123456789012@compute-system.iam.gserviceaccount.com

gcloud iam service-accounts add-iam-policy-binding \
    USER_DEFINED_SERVICE_ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com \
    --member="user:YOUR_SA_IMPERSONATOR_EMAIL_ADDRESS" \
    --role="roles/iam.serviceAccountUser"

gcloud iam service-accounts add-iam-policy-binding \
    USER_DEFINED_SERVICE_ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com \
    --member="user:YOUR_SA_IMPERSONATOR_USER_EMAIL_ADDRESS" \
    --role=roles/iam.serviceAccountTokenCreator \
    --format=json

gcloud iam service-accounts add-iam-policy-binding \
    USER_DEFINED_SERVICE_ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com \
    --member="serviceAccount:YOUR_SA_IMPERSONATOR_AGENT_EMAIL_ADDRESS" \
    --role=roles/iam.serviceAccountTokenCreator \
    --format=json

