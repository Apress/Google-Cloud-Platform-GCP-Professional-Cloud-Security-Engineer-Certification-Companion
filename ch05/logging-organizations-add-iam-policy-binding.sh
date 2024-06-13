# Replace for example:
# ORGANIZATION_ID = the ID of your organization, e.g. 123456789012
# MEMBER = the principal, whose ROLE needs to be granted in the V1 format, e.g.
#     'user:samuele@dariokart.com'
# ROLE = the IAM role to be granted to the principal identified in MEMBER,  e.g. 'roles/logging.viewAccessor'

gcloud organizations add-iam-policy-binding \
   ORGANIZATION_ID \
   --member=MEMBER \
   --role=ROLE



