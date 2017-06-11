#!/bin/bash
EMAIL="r1"
PASSWORD="r1"
API="${API_ORIGIN:-https://protected-fjord-91425.herokuapp.com}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
