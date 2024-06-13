# Replace for example:
# PROJECT_ID = your project ID
# BILLING_ACCOUNT = the billing account who pays for your project resource usage

gcloud alpha billing accounts projects link PROJECT_ID \
    --billing-account=BILLING_ACCOUNT