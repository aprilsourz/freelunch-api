#!/bin/bash
EMAIL="r1"
PASSWORD="r1"
API="${API_ORIGIN:-https://protected-fjord-91425.herokuapp.com/}"
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
