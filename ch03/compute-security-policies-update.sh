# Replace for example:
# SECURITY_POLICY = mobile-clients-policy
# DESCRIPTION = "policy for external users"

gcloud compute security-policies update SECURITY_POLICY \
    --description DESCRIPTION \
    --enable-layer7-ddos-defense
