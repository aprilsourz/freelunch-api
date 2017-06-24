#!/bin/bash
TOKEN=BAhJIiU3N2Y3NzIzMzQ2M2RlNmZiZmI3MmQyMTY5Mzc3MzE0ZAY6BkVG--66e4f1f5ed7aa3c7b6f2cdcff5961a35c6ccacba
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/conversations"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data
echo

# https://protected-fjord-91425.herokuapp.com/
