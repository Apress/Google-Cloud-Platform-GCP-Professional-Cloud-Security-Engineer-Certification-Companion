# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# NOTE_ID = the ID of your note, e.g. gianni-attestor-note
# ATTESTOR_ID = the ID of your attestor, e.g. gianni-binauthz-attestor

gcloud container binauthz attestors create \
    ATTESTOR_ID \
    --attestation-authority-note=NOTE_ID \
    --attestation-authority-note-project=PROJECT_ID
