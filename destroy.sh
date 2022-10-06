#!/bin/sh

echo "Starting Cloud Build job"
gcloud builds submit . --config cloudbuild_destroy.yaml
