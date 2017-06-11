#!/bin/bash
TOKEN=BAhJIiUwYzFmYzcwM2FkNDg5MzA4OTI1MWQyZmY2ZTM5OWFiNgY6BkVG--61091ad11e964691ccd1019b53b735d8e1372d0b
API="${API_ORIGIN:-https://protected-fjord-91425.herokuapp.com}"
ID=5
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

# https://protected-fjord-91425.herokuapp.com/
