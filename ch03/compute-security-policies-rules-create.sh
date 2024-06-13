# Replace for example:
# SECURITY_POLICY = mobile-clients-policy
# PRIORITY = [0-2147483647], e.g. 1000
# ACTION = allow | deny | deny-403 | deny-404 | deny-502 | rate-based-ban | redirect | throttle
# SOURCE_RANGES = CIDR_RANGE,[CIDR_RANGE,…]] e.g. "198.51.100.0/24"

gcloud compute security-policies rules create PRIORITY \
    --security-policy SECURITY_POLICY \
    --action ACTION \
    --src-ip-ranges SOURCE_RANGES
