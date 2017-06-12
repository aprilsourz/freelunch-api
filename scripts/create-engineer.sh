#!/bin/bash
TOKEN=BAhJIiU0YmJiMDVlMmY0NWZhMGUzODlkNTllNjU3ZjRiNGNjNAY6BkVG--44d3a48e33e0509a4c7b8048e62535d051546660
NAME=e1
WEBSITE=e1
API="${API_ORIGIN:-https://protected-fjord-91425.herokuapp.com}"
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
