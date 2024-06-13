# Preliminary steps
# upon installing gcloud CLI on your platform

mkdir godev
cd godev
go mod init example.com/ch04
go get cloud.google.com/go/dlp

gcloud auth application-default login