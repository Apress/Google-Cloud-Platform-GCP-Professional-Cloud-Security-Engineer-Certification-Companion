# Replace for example:
# PROJECT_ID = the ID of your project, e.g. evocative-hour-351120

export CONTAINER_PATH=us.gcr.io/${PROJECT_ID}/hello-world
docker build -t $CONTAINER_PATH ./