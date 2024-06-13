# Replace for example:
# ORGANIZATION_ID = your organization ID, e.g. 123456789012
# TITLE = the title of your access policy, e.g. example-default-access-policy
# SCOPES = a comma-delimited list of resource containers in the notation:
#      folders/FOLDER_ID, projects/PROJECT_NUMBER
#      note how this flag requires project numbers, not project IDs

gcloud access-context-manager policies create \
    --organization=ORGANIZATION_ID \
    --title=TITLE \
    --scopes=SCOPES