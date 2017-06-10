#!/bin/bash
TOKEN=BAhJIiU1MzZkMjdjY2E1N2M3MzBjNTE1OTA0ZGQ1ODI1ZDlkYgY6BkVG--0be40df943e2785caeae9dec545fb5be67e01a48
NAME=kiwi
WEBSITE=cereal
ID=12512351235
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/engineers/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "engineer": {
      "name": "'"${NAME}"'",
      "website": "'"${WEBSITE}"'"
    }
  }'

echo
