# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# KEY_RING = the name of your key ring, e.g. dlp-keyring
# KEY = the name of your cryptographic key, e.g. dlp-key
# BASE64_AES_KEY_DATA = the content of your Base64 AES key

curl "https://dlp.googleapis.com/v2/projects/PROJECT_ID/locations/global/content:reidentify" \
    --request "POST" \
    --header "Authorization:Bearer $(gcloud auth application-default print-access-token)" \
    --header "content-type: application/json" \
    --header "x-goog-user-project: PROJECT_ID" \
    --data "@./templates/reid_fpe_request.json"