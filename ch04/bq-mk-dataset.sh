# Replace for example:
# LOCATION = the location where your dataset will live, e.g. us-central1
# SENSITIVE_DATASET = the name of your sensitive dataset, e.g. sensitive_dataset
# EXPIRATION = the number of seconds your dataset will live
# DESCRIPTION = a short description of your dataset

bq --location=LOCATION mk -d \
    --default_table_expiration EXPIRATION \
    --description DESCRIPTION \
    SENSITIVE_DATASET
