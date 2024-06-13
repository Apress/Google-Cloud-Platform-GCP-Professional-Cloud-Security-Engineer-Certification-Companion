# Replace for example:
# VM = the name of your instance, e.g. vm1
# NETWORK = the name of the VPC containing the subnet where your VM will live, e.g. vpc1
# SUBNET = the name of the subnet where your new instance will live, e.g. subnet1a
# ZONE = the zone where your instance will be created, e.g. us-east1-c

gcloud compute instances create VM \
    --network=NETWORK \
    --subnet=SUBNET \
    --zone=ZONE


