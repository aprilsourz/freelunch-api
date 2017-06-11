#!/bin/bash
TOKEN=BAhJIiUxZTRlZjIyYjA2Y2ZjZDg0YTFhOGMyOTY2ODk2MDAyZAY6BkVG--a48398f965217092abe61bc2e811933ae1ef238a
NAME=e3
WEBSITE=e3
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

# https://protected-fjord-91425.herokuapp.com/
