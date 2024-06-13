# Replace for example:
# YOUR_CREDENTIALS = your secret name, e.g. your_username
# PASSWORD = your secret password, e.g. "jxQ7drsg7"

echo -n PASSWORD | gcloud secrets create YOUR_CREDENTIALS \
    --replication-policy="automatic" \
    --data-file=-
