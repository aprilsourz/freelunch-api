#!/bin/bash

EMAIL="e5"
PASSWORD="e5"
API="${API_ORIGIN:-http://localhost:4741}"

URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'",
      "account_type": 1
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
