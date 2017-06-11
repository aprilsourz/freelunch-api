#!/bin/bash
TOKEN=BAhJIiVjZGFlOTdhZTAxYzFjMmY4MjRlNjkyODEzN2YxMWY1NgY6BkVG--d530b235441f2d40d54b12a821cc5318eb4e7b33
NAME=kiwi
WEBSITE=cereal
ID=12512351235
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/engineers/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "engineer": {
      "name": "'"${NAME}"'",
      "website": "'"${WEBSITE}"'"
    }
  }'

echo
