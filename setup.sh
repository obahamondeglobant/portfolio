
gcloud iam service-accounts create $SERVICE_ACCOUNT_NAME --display-name $SERVICE_ACCOUNT_NAME --project $PROJECT_ID

gcloud projects add-iam-policy-binding $PROJECT_ID --member "serviceAccount:$SERVICE_ACCOUNT_NAME@$PROJECT_ID.iam.gserviceaccount.com" --role roles/run.admin

gcloud iam service-accounts keys create $KEY_FILE_NAME --iam-account $SERVICE_ACCOUNT_NAME@$PROJECT_ID.iam.gserviceaccount.com --project $PROJECT_ID

echo "Credentials JSON file created: $KEY_FILE_NAME"