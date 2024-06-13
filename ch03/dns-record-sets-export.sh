# Replace for example:
# YOUR_ZONE = the name of your DNS zone, e.g. your-dns-zone
# RECORD_FILE = pathname to the file with exported record sets
#    default format is YAML,
#    BIND if --zone-file-format is used

gcloud dns record-sets export RECORD_FILE \
    --zone=YOUR_ZONE