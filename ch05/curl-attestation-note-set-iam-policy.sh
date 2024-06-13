# Replace for example:
# NOTE_IAM_ALLOW_POLICY_FILE = the pathfile of your note resource's IAM allow policy file in JSON, e.g. ./let_binauthz_sa_view_notes_on_project.json
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# NOTE_ID = the ID of your note, e.g. gianni-attestor-note

curl -X POST  \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $(gcloud auth print-access-token)" \
    --data-binary @NOTE_IAM_ALLOW_POLICY_FILE \
"https://containeranalysis.googleapis.com/v1/projects/PROJECT_ID/notes/NOTE_ID:setIamPolicy"
