#!/bin/bash
TOKEN=BAhJIiUyZWFiOWM4NDFlNGExZDg3OTI0NThiNDc2OTdhZjNmMgY6BkVG--71a24b34645fd8af91a56206e890a2f30d287c4f
URL_PATH="/conversations"
API="${API_ORIGIN:-http://localhost:4741}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
