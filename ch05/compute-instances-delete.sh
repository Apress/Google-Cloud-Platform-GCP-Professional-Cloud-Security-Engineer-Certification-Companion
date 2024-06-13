# Replace for example:
# VM = the name of your instance, e.g. vm1
# ZONE = the zone where your instance will be created, e.g. us-east1-c

gcloud compute instances delete VM \
    --zone=ZONE


