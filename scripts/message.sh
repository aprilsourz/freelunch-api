#!/bin/bash
TOKEN=BAhJIiUxNWM0ODlkNjA4NjAwYmZlM2IwNDNjZWRmMmEwMmU4NwY6BkVG--27c26190368fe5933b2f985b9ab9fa54c85ec81d
URL_PATH="/messages"
ID=46
API="${API_ORIGIN:-http://localhost:4741}"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

# https://protected-fjord-91425.herokuapp.com/
