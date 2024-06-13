# Replace for example:
# YOUR_ZONE = the name of your DNS zone, e.g. your-dns-zone
# RECORD_FILE = pathname to the file with record sets to import in YOUR_ZONE
#    default format is YAML,
#    BIND if --zone-file-format is used

gcloud dns record-sets import RECORD_FILE \
    --zone=YOUR_ZONE