#!/bin/bash
TOKEN=BAhJIiUxZTRlZjIyYjA2Y2ZjZDg0YTFhOGMyOTY2ODk2MDAyZAY6BkVG--a48398f965217092abe61bc2e811933ae1ef238a
AME=kiwi
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
