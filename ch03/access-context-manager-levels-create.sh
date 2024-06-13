# Replace for example:
# LEVEL = the name of your access level, e.g. example_level
# POLICY_ID = your access policy ID
# YOUR_LEVEL_SPEC_FILE_PATH = the pathname to your level spec YAML file
# TITLE = the title of your access level, e.g. your-app-shared-vpc-access-level
# COMBINATOR = AND | OR

gcloud access-context-manager levels create LEVEL \
    --policy=POLICY_ID \
    --basic-level-spec=YOUR_LEVEL_SPEC_FILE_PATH \
    --title=TITLE \
    --combine-function=COMBINATOR