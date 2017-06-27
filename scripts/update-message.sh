#!/bin/bash
TOKEN=BAhJIiUzYzBhNzJlOTg0ZWU2NjM3NmFhYmJhNmJkY2MwNGY3NgY6BkVG--94b6ceb5f44dd0e24cfccd2062121856bc196170

ID=1
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/messages/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "message": {
      "read": true
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
