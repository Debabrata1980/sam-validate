#!/bin/sh

# Deploy the template using the SAM CLI
template_file="$1"
region="$2"
echo "Sam validation started.."
sam validate -t template_file --region region
if [ $? -ne 0 ]; then
  echo "SAM validate error"
  exit 1
fi
