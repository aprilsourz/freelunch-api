#!/bin/bash
TOKEN=BAhJIiVmNDZlZmE0OWM2ZmVmODZkNDk2OTFjMjQwYTEwYzZiMAY6BkVG--8041b0db4ad0f5137c84ae20f3f17221769ff99d
NAME=e3
WEBSITE=e3
API="${API_ORIGIN:-http://localhost:4741}"
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
