# Replace for example:
# YOUR_ZONE = the name of your DNS zone, e.g. your-dns-zone
# DNS_NAME = The DNS name suffix that will be managed with the created zone, e.g. example.com
# DESCRIPTION = "A DNS zone"
# VISIBILITY = public | private
# NETWORKS = [NETWORK,…]] only if visibility=private
# IP_ADDRESS_LIST = [IP_ADDRESSES,…] only if visibility=private
#    Non-RFC1918 addresses must be publicly routable through the Internet
#    RFC1918 addresses will forward through the VPC

gcloud dns managed-zones create YOUR_ZONE \
    --dns-name=DNS_NAME \
    --description=DESCRIPTION \
    --visibility=VISIBILITY \
    --networks=NETWORKS \
    --forwarding-targets=IP_ADDRESS_LIST