# Replace for example:
# RSA_WRAPPED_PATHFILE = the pathname to your VM AES256 cryptographic key resulting from the asymm encryption with the RSA openssl utility, e.g. ./rsa_wrapped_vm_aes_key
# BASE64_RSA_WRAPPED_PATHFILE = the Base64 encoding of the RSA-wrapped VM AES256 cryptographic key, e.g. rsa_wrapped_vm_aes_key.enc

openssl enc \
    -base64 \
    -in RSA_WRAPPED_PATHFILE \
| tr -d '\n' \
| sed -e '$a\' \
> BASE64_RSA_WRAPPED_PATHFILE