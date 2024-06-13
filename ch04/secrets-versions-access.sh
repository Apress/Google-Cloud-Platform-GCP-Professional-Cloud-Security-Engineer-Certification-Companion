# Replace for example:
# VERSION_NUMBER = the version number of your secret, e.g. 1, or the keyword latest
# YOUR_CREDENTIALS = your secret name, e.g. your_username

gcloud secrets versions access VERSION_NUMBER \
    --secret=YOUR_CREDENTIALS
