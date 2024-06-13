# Replace for example:
# SECURITY_POLICY = mobile-clients-policy
# DESCRIPTION = "policy for external users"
# TYPE = CLOUD_ARMOR | CLOUD_ARMOR_EDGE | CLOUD_ARMOR_NETWORK

gcloud compute security-policies create SECURITY_POLICY \
    --description DESCRIPTION \
    --type=TYPE
