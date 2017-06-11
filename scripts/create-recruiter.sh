#!/bin/bash
TOKEN=BAhJIiU0YTBlZjhmYTE0ZjBiNWU4MzJlNGRiYWFjMTIxODRmMAY6BkVG--6289d52532e5769d925064687c5207af9493887e
NAME=r1
WEBSITE=r1
API="${API_ORIGIN:-https://protected-fjord-91425.herokuapp.com}"
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

# https://protected-fjord-91425.herokuapp.com/
