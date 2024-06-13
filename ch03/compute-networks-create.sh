# Replace for example:
# NETWORK = the name of your new VPC, e.g. vpc1
# SUBNET_MODE = auto | custom

gcloud compute networks create NETWORK \
    --subnet-mode=SUBNET_MODE

