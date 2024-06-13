# Replace for example:
# YOUR_VM = the name of your instance, e.g. vm
# YOUR_VM_ZONE = the zone where your instance will be created, e.g. us-east1-b

gcloud compute disks describe YOUR_VM \
    --zone=YOUR_VM_ZONE \
    --format="json(diskEncryptionKey)"



