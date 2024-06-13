# Replace for example:
# POLICY_ID = your-iam-deny-policy
# ATTACHMENT_POINT = cloudresourcemanager.googleapis.com/projects/your-project-id
# POLICY_FILE = your-iam-deny-policy-file.json

gcloud iam policies create POLICY_ID \
    --attachment-point=ATTACHMENT_POINT \
    --kind=denypolicies \
    --policy-file=POLICY_FILE
