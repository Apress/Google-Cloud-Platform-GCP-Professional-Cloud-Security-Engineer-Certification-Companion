# Replace for example:
# MODULE_NAME = the module name in Security Command Center
# SERVICE_NAME = container-threat-detection | event-threat-detection | rapid-vulnerability-detection | security-health-analytics | virtual-machine-threat-detection | web-security-scanner
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120
# A folder, or an organization can be used as well:
#    --folder=FOLDER_ID
#    --organization=ORGANIZATION_ID

gcloud alpha scc settings services modules enable \
    --module=MODULE_NAME \
    --service=SERVICE_NAME \
    --project=PROJECT_ID
