#!/bin/bash
TOKEN=BAhJIiVmMTFiNDc1ZjEzNTFmMWNkNzFkNDBhMmFkYWNmYjJkYgY6BkVG--967857f37f26a3bf6591164f24866c6e237795cc
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

# https://protected-fjord-91425.herokuapp.com/
