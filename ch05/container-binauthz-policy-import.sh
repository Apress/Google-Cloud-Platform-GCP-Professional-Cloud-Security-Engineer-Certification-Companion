# Replace for example:
# BINAUTHZ_POLICY_PATHFILE = the pathfile to your YAML policy binary authorization, e.g. ./policy.yaml or ./updated_policy.yaml

gcloud container binauthz policy \
    import BINAUTHZ_POLICY_PATHFILE