# Replace for example:
# VM_AES_KEY = the pathname to your VM AES256 cryptographic key, e.g. ./vm_aes_key

mkdir ../keys/csek
cd ../keys/csek
openssl rand -out VM_AES_KEY 32
curl -s -O -L https://cloud-certs.storage.googleapis.com/google-cloud-csek-ingress.pem
