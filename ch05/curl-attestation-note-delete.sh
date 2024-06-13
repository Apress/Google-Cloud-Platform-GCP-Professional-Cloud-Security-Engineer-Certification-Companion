# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# NOTE_ID = the ID of your note, e.g. gianni-attestor-note

curl -X DELETE \
   -H "Authorization: Bearer $(gcloud auth print-access-token)" \
"https://containeranalysis.googleapis.com/v1/projects/PROJECT_ID/notes/NOTE_ID"
