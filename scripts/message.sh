#!/bin/bash
TOKEN=BAhJIiU3N2Y3NzIzMzQ2M2RlNmZiZmI3MmQyMTY5Mzc3MzE0ZAY6BkVG--66e4f1f5ed7aa3c7b6f2cdcff5961a35c6ccacba
URL_PATH="/messages"
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

# https://protected-fjord-91425.herokuapp.com/
