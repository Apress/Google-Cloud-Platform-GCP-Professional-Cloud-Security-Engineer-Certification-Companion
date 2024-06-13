# Replace for example:
# NETWORK = the name of your VPC, e.g. vpc1
# PEER_NETWORK = the name of the VPC, whose RFC1918 connectivity you want to extend, e.g. vpc2

gcloud compute networks peerings create PEERING \
    --network=NETWORK \
    --peer-network=PEER_NETWORK


