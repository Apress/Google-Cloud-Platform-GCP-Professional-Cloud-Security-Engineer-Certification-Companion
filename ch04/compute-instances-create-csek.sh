# Replace for example:
# YOUR_VM = the name of your instance, e.g. vm
# YOUR_VM_ZONE = the zone where your instance will be created, e.g. us-east1-b

gcloud compute instances create YOUR_VM \
    --zone=YOUR_VM_ZONE \
    --csek-key-file=YOUR_JSON_CSEK_VM_KEY_FILE


