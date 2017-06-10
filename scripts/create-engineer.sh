#!/bin/bash
TOKEN=BAhJIiU2NjFhOTU5ODMxNWUxYWNjMzNjMmRlZDVmYjhjNTc1OAY6BkVG--2e38ce5b057c98884e64a997c4a2bada1578005c
NAME=arlo1
WEBSITE=test
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/engineers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "engineer": {
      "name": "'"${NAME}"'",
      "website": "'"${WEBSITE}"'"
    }
  }'

echo
