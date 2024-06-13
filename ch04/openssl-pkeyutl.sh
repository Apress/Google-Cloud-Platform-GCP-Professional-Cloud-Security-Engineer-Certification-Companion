# Replace for example:
# PLAINTEXT_PATHFILE = the pathname to your plaintext file you want to encrypt, e.g. ./input/plaintext
# CIPHERTEXT_PATHFILE = the pathname to your ciphertext file resulting from the asymm encryption, e.g. ./output/ciphertext_with_asymmetric_key
# PUBLIC_KEY_PATHFILE = the pathfile to the returned public key part of your asymmetric key in PEM format, e.g. ../keys/asymmetric_public_key.pem

openssl pkeyutl -encrypt \
    -pubin \
    -in PLAINTEXT_PATHFILE \
    -inkey PUBLIC_KEY_PATHFILE \
    -pkeyopt "rsa_padding_mode:oaep" \
    -pkeyopt "rsa_oaep_md:sha512" \
    -pkeyopt "rsa_mgf1_md:sha512" \
    > CIPHERTEXT_PATHFILE