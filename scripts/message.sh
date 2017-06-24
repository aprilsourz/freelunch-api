#!/bin/bash
TOKEN=BAhJIiViMDBjOGI1ODk0OGY3MDQ2YTFmZWJjYTJiZDc5NTEzNgY6BkVG--d274fcdc5fdd22b7961f0890a0c449875b9b52f6
URL_PATH="/messages"
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

# https://protected-fjord-91425.herokuapp.com/
