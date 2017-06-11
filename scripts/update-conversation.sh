#!/bin/bash
TOKEN=BAhJIiU1OTQ3MGNhZDM4OTFjMjYzMWQ3NzE0NjU1YzFjM2YzMAY6BkVG--5ad4876736446d80f7258bbf3d30574f587f9db5
RESPONSE=yo
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/conversations"
ID=5
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "conversation": {
      "response": "'"${RESPONSE}"'",
      "is_completed": "false"
    }
  }'

echo

# https://protected-fjord-91425.herokuapp.com/
