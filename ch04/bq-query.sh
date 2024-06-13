# Replace for example:
# LOCATION = the location where your dataset will live, e.g. us-central1
# SENSITIVE_DATASET = the name of your sensitive dataset, e.g. sensitive_dataset
# PII_TABLE = the name of your table, e.g. pii_table
# EXPIRATION = the number of seconds your table will live
# DESCRIPTION = a short description of your table
# LABEL = a meaningful label for your table, e.g. organization:infosec

bq query \
    --use_legacy_sql=false \
    'SELECT * FROM `SENSITIVE_DATASET.PII_TABLE`'
