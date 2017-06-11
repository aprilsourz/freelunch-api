#!/bin/bash
TOKEN=BAhJIiUzMGU0NzExMDhkOGJlNDE3NzgzNmQzMGNmMjE3ODE2ZgY6BkVG--39cb933b2b700878afd4ae6fdfebc14ab1f85434
RNAME=recruiter5
ENAME=e2
ID=6
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
