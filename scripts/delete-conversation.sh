#!/bin/bash
TOKEN=BAhJIiVmMmRkNjQ4N2QwYzA3OGM2YWJhMGE3MDRlZTM3MjhmNgY6BkVG--261178f9ceabc52c7500b3472f1e820473c17c89
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/conversations"
ID=1
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \


echo
