# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# CLOUDBUILD_PATHFILE = the pathfile to your Cloud Build YAML, e.g. ./cloudbuild.yaml

gcloud builds submit \
    --substitutions=_PROJECT_ID=PROJECT_ID,_SEVERITY='"CRITICAL|HIGH"' \
    --config CLOUDBUILD_PATHFILE