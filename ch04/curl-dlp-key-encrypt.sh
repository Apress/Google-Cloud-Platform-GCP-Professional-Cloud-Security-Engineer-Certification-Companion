# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# KEY_RING = the name of your key ring, e.g. dlp-keyring
# KEY = the name of your cryptographic key, e.g. dlp-key
# BASE64_AES_KEY_DATA = the content of your Base64 AES key

curl "https://cloudkms.googleapis.com/v1/projects/PROJECT_ID/locations/global/keyRings/KEY_RING/cryptoKeys/KEY:encrypt" \
    --request "POST" \
    --header "Authorization:Bearer $(gcloud auth application-default print-access-token)" \
    --header "content-type: application/json" \
    —-data "{\"plaintext\"; \"BASE64_AES_KEY_DATA\"}"