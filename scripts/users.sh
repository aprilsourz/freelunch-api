#!/bin/bash
TOKEN="BAhJIiViNWYxZWE1MGI4YjA3Yzc1ODQ1OTZiMjFhODNjNGM4MQY6BkVG--470bfc30310bba02108a917ca8916010a4b12a79"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
