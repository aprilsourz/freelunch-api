#!/bin/bash
TOKEN=BAhJIiVjMmZiNzMwNTlmNTZlNmI5NWRlZmZlNDQ2NDhjNTE2YgY6BkVG--bfb67c8d42a15d0ffeae00f18f60ee37bc280726
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
