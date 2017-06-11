#!/bin/bash
TOKEN=BAhJIiUyY2U0MTE1ZGE1MjZmYzM1NDc5NjhiYmMwZDZmNDYyZAY6BkVG--7989e12ded1f7bed8e74a14fde524828c15d37ee
RNAME=recruiter2
ENAME=arlo1
ID=3
LUNCH=lunchrequest
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
