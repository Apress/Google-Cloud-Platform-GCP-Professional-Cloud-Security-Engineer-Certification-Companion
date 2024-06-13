# Replace for example:
# YOUR_ZONE = the name of your DNS zone, e.g. your-dns-zone
# NAME = the exact domain name whose record sets you want to list, e.g. dariokart.private
# TYPE = the type of records you want to list, e.g. CNAME 

gcloud dns record-sets list \
    --zone=YOUR_ZONE \
    --name=NAME \
    --type=TYPE