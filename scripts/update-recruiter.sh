#!/bin/bash
TOKEN=BAhJIiVjZGFlOTdhZTAxYzFjMmY4MjRlNjkyODEzN2YxMWY1NgY6BkVG--d530b235441f2d40d54b12a821cc5318eb4e7b33
WEBSITE=potato
NAME=LOLOL
ID=12512351235
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/recruiters/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "recruiter": {
      "name": "'"${NAME}"'",
      "website": "'"${WEBSITE}"'"
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
