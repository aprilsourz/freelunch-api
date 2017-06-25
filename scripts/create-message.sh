#!/bin/bash
TOKEN=BAhJIiUwN2Y3NjE3YjlhNGRjNDhiY2FkOTA3YjQ1YWYxZWI0NAY6BkVG--b62506e3041aa9ad9473dc99a3113ce4750df0a1
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
      "body": "engineer text",
      "sender_name": "example name"
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
