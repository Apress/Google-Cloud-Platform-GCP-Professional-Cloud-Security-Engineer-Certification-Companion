# Replace for example:
# PRIVATE_IP_NAME = the name of your private IP address, e.g. psc-internal-ip-to-all-apis
# NETWORK = the name of the VPC containing the subnet where your private IP address will live, e.g. vpc1
# ADDRESSES = comma-delimited list of IP addresses (in IPV4, or IPV6 format)
# PURPOSE = VPC_PEERING | SHARED_LOADBALANCER_VIP | GCE_ENDPOINT | IPSEC_INTERCONNECT | PRIVATE_SERVICE_CONNECT

gcloud compute addresses create PRIVATE_IP_NAME \
    --network=NETWORK \
    --addresses=ADDRESSES \
    --purpose=PURPOSE \
    --global


