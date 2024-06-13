# Replace for example:
# PERIMETER = the ID of your perimeter, e.g. example_perimeter
# TITLE = the title of your perimeter, e.g. your-app-shared-vpc-perimeter
# POLICY_ID = your access policy ID
# LEVELS = Comma-delimited list of IDs for access levels (in the same policy) that an intra-perimeter request must satisfy to be allowed
# RESOURCES = Comma-delimited list of projects (in the form projects/PROJECT_NUMBER) in this perimeter
# RESTRICTED_SERVICES = Comma-delimited list of services to which the perimeter boundary does apply (for example, storage.googleapis.com)
# IN_YAML_FILE = pathname to ingress policies YAML file
# OUT_YAML_FILE = pathname to egress policies YAML file

gcloud access-context-manager perimeters create PERIMETER \
    --title=TITLE \
    --policy=POLICY_ID \
    --access-levels=LEVELS \
    --resources=RESOURCES \
    --restricted-services=RESTRICTED_SERVICES \
    --ingress-policies=IN_YAML_FILE \
    --egress-policies=OUT_YAML_FILE