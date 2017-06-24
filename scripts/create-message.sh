#!/bin/bash
TOKEN=BAhJIiViMDBjOGI1ODk0OGY3MDQ2YTFmZWJjYTJiZDc5NTEzNgY6BkVG--d274fcdc5fdd22b7961f0890a0c449875b9b52f6
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/messages"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "message": {
      "conversation_id": "'"${ID}"'",
      "body": "engineer text"
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
