# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# DISPLAY_NAME = becomes the finding category for all findings that are returned by this custom module, e.g. "bucket_problem"
# ENABLEMENT_STATE = disabled | enabled | enablement-state-unspecified | inherited
# CUSTOM_CONFIG_PATHFILE = the pathfile to your custom module, e.g. my-self-healing-bucket-module.yaml

gcloud scc custom-modules sha create \
    --project=PROJECT_ID \
    --display-name=DISPLAY_NAME \
    --enablement-state=ENABLEMENT_STATE \
    --custom-config-from-file=CUSTOM_CONFIG_PATHFILE
