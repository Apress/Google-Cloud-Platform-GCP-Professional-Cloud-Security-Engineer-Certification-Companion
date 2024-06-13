# Replace for example:
# BASE64_AES_KEY = the pathname to your Base64 AES cryptographic key, e.g. "./aes_key.enc"

mkdir keys
cd keys
openssl rand -out BASE64_AES_KEY -base64 32