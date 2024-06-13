# Replace for example:
# YOUR_ORG_ADMIN_GROUP_EMAIL_ADDRESS = gcp-organization-admins@example.com
# YOUR_NEW_ORG_ADMIN_EMAIL_ADDRESS = your-org-admin@example.com

gcloud identity groups memberships add \
   --group-email="YOUR_ORG_ADMIN_GROUP_EMAIL_ADDRESS” \
   --member-email=”YOUR_NEW_ORG_ADMIN_EMAIL_ADDRESS”
