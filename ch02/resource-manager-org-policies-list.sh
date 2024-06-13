# Replace for example:
# ORGANIZATION_ID = 123456789012
# FOLDER_ID = 987654321210
# PROJECT_ID = your-project-id

gcloud resource-manager org-policies list \
    --organization=ORGANIZATION_ID
gcloud resource-manager org-policies list \
    --folder=FOLDER_ID
gcloud resource-manager org-policies list \
    --project=PROJECT_ID