#!/bin/bash
TOKEN=BAhJIiU3ZTMyMzExNzc4NzA2NTM0NjQzNzFiYzgzMGE2NjhkYwY6BkVG--a61a47e13eb1173b9e3130a54d80723fe8319bc2
URL_PATH="/conversations"
API="${API_ORIGIN:-http://localhost:4741}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
