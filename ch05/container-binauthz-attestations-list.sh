# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# ATTESTOR_ID = the ID of your attestor, e.g. gianni-binauthz-attestor

gcloud container binauthz attestations list \
   --attestor=ATTESTOR_ID \
   --attestor-project=PROJECT_ID

