# Replace for example:
# PARENT_ID = the ID of your resource container, e.g. an organization ID 123456789012
# SOURCE_ID = the ID of your source, use "gcloud scc sources describe" to determine your source ID

gcloud scc findings list PARENT_ID \
    --source=SOURCE_ID \
    --filter="category=\"bucket_problem\""

