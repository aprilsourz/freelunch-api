#!/bin/bash
TOKEN=BAhJIiUyZWFiOWM4NDFlNGExZDg3OTI0NThiNDc2OTdhZjNmMgY6BkVG--71a24b34645fd8af91a56206e890a2f30d287c4f
RNAME=recruiter2
ENAME=arlo1
ID=3
LUNCH=lunch
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/conversations"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "conversation": {
      "recruiter_name": "'"${RNAME}"'",
      "engineer_name": "'"${ENAME}"'",
      "lunch_request": "'"${LUNCH}"'",
      "engineer_id": "'"${ID}"'"
    }
  }'

echo
