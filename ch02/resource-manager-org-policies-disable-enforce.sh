# Replace for example:
# ORGANIZATION_ID = 123456789012
# FOLDER_ID = 987654321210
# PROJECT_ID = your-project-id

gcloud resource-manager org-policies \
    disable-enforce iam.disableCrossProjectServiceAccountUsage \
    --organization=ORGANIZATION_ID

gcloud resource-manager org-policies \
    disable-enforce iam.disableCrossProjectServiceAccountUsage \
    --folder=FOLDER_ID

gcloud resource-manager org-policies \
    disable-enforce iam.disableCrossProjectServiceAccountUsage \
    --project=PROJECT_ID
