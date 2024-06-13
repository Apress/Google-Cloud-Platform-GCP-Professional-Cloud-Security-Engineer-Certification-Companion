# Replace for example:
# FW_RULE_NAME = the name of your forwarding rule, e.g. psc-to-all-apis
# NETWORK = the name of the VPC where your Private Service Connect endpoint will live, e.g. vpc1
# PRIVATE_IP_NAME = the name of your reserved, private IP address, e.g. psc-internal-ip-to-all-apis
# API_BUNDLE = all-apis | vpc-sc

gcloud compute forwarding-rules create FW_RULE_NAME \
    --network=NETWORK \
    --address=PRIVATE_IP_NAME \
    --target-google-api-bundle=API_BUNDLE \
    --global


