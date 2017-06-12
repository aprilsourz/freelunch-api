#!/bin/bash
TOKEN=BAhJIiU0YTBlZjhmYTE0ZjBiNWU4MzJlNGRiYWFjMTIxODRmMAY6BkVG--6289d52532e5769d925064687c5207af9493887e
RNAME=r1
ENAME=something
ID=1
LUNCH=lunch
API="${API_ORIGIN:-https://protected-fjord-91425.herokuapp.com}"
URL_PATH="/conversations"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "conversation": {
      "recruiter_name": "'"${RNAME}"'",
      "engineer_name": "'"${ENAME}"'",
      "lunch_request": "'"${LUNCH}"'",
      "engineer_id": "'"${ID}"'"
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
