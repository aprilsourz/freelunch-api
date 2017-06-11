#!/bin/bash
TOKEN=BAhJIiUzMGU0NzExMDhkOGJlNDE3NzgzNmQzMGNmMjE3ODE2ZgY6BkVG--39cb933b2b700878afd4ae6fdfebc14ab1f85434
NAME=recruiter5
WEBSITE=recruiter5
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/recruiters"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "recruiter": {
      "name": "'"${NAME}"'",
      "website": "'"${WEBSITE}"'"
    }
  }'

echo
