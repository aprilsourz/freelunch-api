#!/bin/bash
TOKEN=BAhJIiU5NGY4NWUwZDM5YmU2ZDFiZDUwYTU1ZWU4MThjYTI0YwY6BkVG--dcec840aa791120bfda632414f6e6cfadb3d134b
RESPONSE=yo
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/conversations"
ID=1
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
