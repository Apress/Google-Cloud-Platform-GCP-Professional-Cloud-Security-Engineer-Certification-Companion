# Replace for example:
# SECURITY_POLICY = mobile-clients-policy
# BACKEND_SERVICE = games

gcloud compute backend-services update BACKEND_SERVICE \
    --security-policy SECURITY_POLICY

