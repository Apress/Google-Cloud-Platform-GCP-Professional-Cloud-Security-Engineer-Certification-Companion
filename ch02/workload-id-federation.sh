# 1. Save your project ID as an environment variable
export PROJECT_ID=$(gcloud config get-value project)

# 2. Create a GCP user-managed service account
#    Save the service account email into the environment 
#    variable SERVICE_ACCOUNT_EMAIL, e.g. gke-cicd@my-project-id.iam.gserviceaccount.com
gcloud iam service-accounts create "gke-cicd" \
  --project "${PROJECT_ID}"

# 3. Authorize your user-managed service account:
gcloud projects add-iam-policy-binding ${PROJECT_ID} \
  --member="serviceAccount:${SERVICE_ACCOUNT_EMAIL}" \
  --role="roles/container.admin"

# 4. Enable the IAM Credentials API:
gcloud services enable iamcredentials.googleapis.com \
  --project "${PROJECT_ID}"

# 5. Create a Workload Identity Pool
gcloud iam workload-identity-pools create "my-pool-id" \
  --project="${PROJECT_ID}" \
  --location="global" \

# 6. Get the full ID of your newly created Workload Identity Pool:
gcloud iam workload-identity-pools describe "my-pool-id" \
  --project="${PROJECT_ID}" \
  --location="global" \
  --format="value(name)"

# 7. Save this value as an environment variable.
#   This should look like:	
#
#   projects/X/locations/global/workloadIdentityPools/Y
#   where:
#         X is my-project-id
#         Y is my-pool-id
#
export WORKLOAD_IDENTITY_POOL_ID="..." # value from step 6

# 8. Create a provider in the newly created workload identity pool
gcloud iam workload-identity-pools providers create-oidc "github-trusted-provider-id" \
  --project="${PROJECT_ID}" \
  --location="global" \
  --workload-identity-pool=${WORKLOAD_IDENTITY_POOL_ID} \
  --attribute-mapping="google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.repository=assertion.repository" \
  --issuer-uri="https://token.actions.githubusercontent.com"

# 9. Authorize the Workload Identity Provider
#  TODO(developer): Update this value to your GitHub repository.
export REPO="username/name" # e.g. "google/chrome"

gcloud iam service-accounts add-iam-policy-binding "gke-cicd@${PROJECT_ID}.iam.gserviceaccount.com" \
  --project="${PROJECT_ID}" \
  --role="roles/iam.workloadIdentityUser" \
  --member="principalSet://iam.googleapis.com/${WORKLOAD_IDENTITY_POOL_ID}/attribute.repository/${REPO}"

# 10. Obtain the Workload Identity Provider REST resource name:
gcloud iam workload-identity-pools providers describe "github-trusted-provider-id" \
  --project="${PROJECT_ID}" \
  --location="global" \
  --workload-identity-pool=${WORKLOAD_IDENTITY_POOL_ID} \
  --format="value(name)"

# 11. Configure your GitHub Actions YAML
#  by setting the workload_identity_provider key to 
#  the Workload Identity Provider REST resource name in step 10

# 12. Use this GitHub Action with the Workload Identity Provider ID 
#  and the user-managed service account’s email