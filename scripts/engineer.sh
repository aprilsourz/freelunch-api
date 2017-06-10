#!/bin/bash
ID=4
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/engineers"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET

echo
