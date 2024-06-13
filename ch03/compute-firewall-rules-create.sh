# Replace for example:
# NAME = the name of your firewall-rule
# PRIORITY = [0-65535]
# NETWORK = the VPC to which this rule is attached, e.g. your-app-shared-vpc
# DIRECTION = INGRESS | EGRESS | IN  | OUT
# ACTION = ALLOW | DENY
# SOURCE_RANGES = CIDR_RANGE,[CIDR_RANGE,…]] e.g. "0.0.0.0/0"
# DESTINATION_RANGES = CIDR_RANGE,[CIDR_RANGE,…]] e.g. "10.0.0.0/22,10.0.0.0/14"
# SOURCE_TAG_RULE = TAG,[TAG,…] e.g. web
# TARGET_TAG_RULE = TAG,[TAG,…] e.g. web
# SOURCE_SA_RULE = EMAIL,[EMAIL,…] e.g. your-sa-1@example.com
# TARGET_SA_RULE = EMAIL,[EMAIL,…] e.g. your-sa-1@example.com
# RULE = PROTOCOL[:PORT[-PORT]],[…] e.g. tcp:443

gcloud compute firewall-rules create NAME \
    --priority=PRIORITY \
    --network=NETWORK \
    --direction=DIRECTION \
    --action=ACTION \
    --source-ranges=SOURCE_RANGES \
    --destination-ranges=DESTINATION_RANGES \
    --source-tags=SOURCE_TAG_RULE \
    --target-tags=TARGET_TAG_RULE \
    --source-service-accounts=SOURCE_SA_RULE \
    --target-service-accounts=TARGET_SA_RULE \
    --rules=RULE