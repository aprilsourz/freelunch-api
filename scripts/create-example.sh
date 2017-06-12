#!/bin/bash
TOKEN=BAhJIiU1YmUwNDAxYTRkZTM0ODU1YThkYTM5Mzk3NTBlYzU3YgY6BkVG--f11e07db51b9ac226597c14cb9fa8b11eed848ce
TEXT=LLO
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
