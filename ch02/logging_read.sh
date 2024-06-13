gcloud logging read “resource.type=service_account” \
    --freshness=50d | more
