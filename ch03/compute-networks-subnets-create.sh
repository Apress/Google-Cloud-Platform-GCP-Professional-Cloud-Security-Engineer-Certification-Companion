# Replace for example:
# SUBNET = the name of your new subnet, e.g. subnet1a
# NETWORK = the name of the VPC containing the subnet, e.g. vpc1
# REGION = the region where your new subnet will live, e.g. us-east1
# RANGE = the RFC1918 CIDR block for your new subnet, e.g. 10.240.1.0/28

gcloud compute networks subnets create SUBNET \
    --network=NETWORK \
    --region=REGION \
    --range=RANGE \
    --enable-private-ip-google-access


