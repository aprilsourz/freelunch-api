#!/bin/bash
TOKEN=BAhJIiVlOWMyMGE3NGYwZjc4YzlmNTM1MWQwMDdlNDdlYjBmZQY6BkVG--ef3d39f3fcfeb11be27f473e831f438072db0dda
URL_PATH="/users"
API="${API_ORIGIN:-http://localhost:4741}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
