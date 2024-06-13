# Replace for example:
# YOUR_ATTESTOR_NOTE = the pathfile to your JSON attestor note, e.g. ./gianni_attestor_note.json
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# NOTE_ID = the ID of your note, e.g. gianni-attestor-note

curl -X POST \
    -H "Content-Type: application/json"  \
    -H "Authorization: Bearer $(gcloud auth print-access-token)" \
    --data-binary @YOUR_ATTESTOR_NOTE  \ 
    "https://containeranalysis.googleapis.com/v1/projects/PROJECT_ID/notes/?noteId=NOTE_ID"
