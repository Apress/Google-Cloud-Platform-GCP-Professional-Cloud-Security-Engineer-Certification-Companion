# Replace for example:
# VM_AES_KEY = the pathname to your VM AES256 cryptographic key, e.g. ./vm_aes_key
# GOOGLE_PUBLIC_KEY_PATHFILE = the pathfile to the Google public key part of the Google X.509 in PEM format, e.g. ./pubkey.pem
# RSA_WRAPPED_PATHFILE = the pathname to your VM AES256 cryptographic key resulting from the asymm encryption with the RSA openssl utility, e.g. ./rsa_wrapped_vm_aes_key

openssl rsautl \
    -oaep \
    -encrypt \
    -pubin \
    -inkey GOOGLE_PUBLIC_KEY_PATHFILE \
    -in VM_AES_KEY \
    -out RSA_WRAPPED_PATHFILE