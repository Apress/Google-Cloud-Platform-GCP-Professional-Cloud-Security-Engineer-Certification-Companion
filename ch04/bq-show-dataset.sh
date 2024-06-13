# Replace for example:
# PROJECT_ID = your project ID, e.g. your-project-id
# LOCATION = the location where your dataset will live, e.g. us-central1
# SENSITIVE_DATASET = the name of your sensitive dataset, e.g. sensitive_dataset
# PII_TABLE = the name of your table, e.g. pii_table
# EXPIRATION = the number of seconds your table will live
# DESCRIPTION = a short description of your table
# LABEL = a meaningful label for your table, e.g. organization:infosec

bq show \
   --format=prettyjson \
   PROJECT_ID:SENSITIVE_DATASET \
> ./bigquery/sensitive_dataset_iam_policy.json
