#!/bin/bash
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/recruiters"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET

echo

# https://protected-fjord-91425.herokuapp.com/
