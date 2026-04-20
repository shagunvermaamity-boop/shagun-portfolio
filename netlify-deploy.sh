#!/bin/bash

SITE_ID="69e616b41bbe7b1a40b3a969"
TOKEN="nfp_tqrG5F9NiBRo5xvV2KXt2SEBR5AVHsAq1318"

# Create deployment
DEPLOY_JSON=$(curl -s -X POST -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{}' \
  "https://api.netlify.com/api/v1/sites/$SITE_ID/deploys")

echo "Deploy response:"
echo "$DEPLOY_JSON" | python3 -m json.tool

DEPLOY_ID=$(echo "$DEPLOY_JSON" | python3 -c "import sys, json; print(json.load(sys.stdin).get('id', ''))" 2>/dev/null)
echo "Deploy ID: $DEPLOY_ID"
