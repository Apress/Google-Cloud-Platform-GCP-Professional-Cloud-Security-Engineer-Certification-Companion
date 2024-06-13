# Replace for example:
# SECURITY_POLICY = mobile-clients-policy
# PRIORITY = [0-2147483647], e.g. 2147483647 (lowest)
# ACTION = allow | deny | deny-403 | deny-404 | deny-502 | rate-based-ban | redirect | throttle

gcloud compute security-policies rules update PRIORITY \
    --security-policy SECURITY_POLICY \
    --action ACTION
