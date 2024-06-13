# Replace for example:
# PROJECT_ID = the ID of the project you want to associate to the project hosting the shared VPC
# HOST_PROJECT_ID = the host project ID

gcloud compute shared-vpc associated-projects add PROJECT_ID \
    --host-project HOST_PROJECT_ID