#!/usr/bin/env bash

export PROJECT_ID=
gcloud builds submit --tag gcr.io/$PROJECT_ID/cloudrun-demo
gcloud run deploy cloudrun-demo --image gcr.io/$PROJECT_ID/cloudrun-demo --platform managed --region us-central1 --allow-unauthenticated
