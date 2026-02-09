#!/bin/bash

# Configuration for plantdiseaseapi Azure Web App

echo "Configuring Azure environment variables..."

az webapp config appsettings set --resource-group plantdiseaseapi --name plantdiseaseapi --settings \
  USE_MOCK=false \
  ENCRYPTION_KEY="Orj-X-eQrjcLXC5J9dr3F9LINeS8mSE3IzmPe9_SX7Y=" \
  ADMIN_API_KEY="khUm4y_sNnedCv842nurpwpZ9KyxlO0EhPTUmQstaV8" \
  ALLOWED_ORIGIN="https://api-saas-pi.vercel.app" \
  SUPABASE_URL="https://ygoiinepwvafcimnerhm.supabase.co" \
  SUPABASE_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlnb2lpbmVwd3ZhZmNpbW5lcmhtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzAzNzMzMjYsImV4cCI6MjA4NTk0OTMyNn0.aha0XQuQIShSWFCl53bOLW-Hyud1w6PPiZ8A0yj45Ts" \
  SUPABASE_SERVICE_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlnb2lpbmVwd3ZhZmNpbW5lcmhtIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MDM3MzMyNiwiZXhwIjoyMDg1OTQ5MzI2fQ.PvrwHRPSibSGxG7nGHLjmRxbH7LE00XPglBQcMaLAyQ" \
  GEMINI_API_KEY="AIzaSyDqlx6VyVGySBM7XTTbCiyPa7Gqur4gpSg" \
  SCM_DO_BUILD_DURING_DEPLOYMENT=true

echo "Configuration complete. Web app should restart automatically."
