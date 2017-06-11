#!/bin/bash

TOKEN=BAhJIiVjZGFlOTdhZTAxYzFjMmY4MjRlNjkyODEzN2YxMWY1NgY6BkVG--d530b235441f2d40d54b12a821cc5318eb4e7b33
NAME=recruiter5
WEBSITE=recruiter5
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/recruiters"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "recruiter": {
      "name": "'"${NAME}"'",
      "website": "'"${WEBSITE}"'"
    }
  }'

echo
