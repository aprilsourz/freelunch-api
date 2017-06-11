#!/bin/bash
TOKEN=BAhJIiUyMGIwMjgwN2U2OGYyOWRmZDVkZTUzMmRjNDZiNjQ4NAY6BkVG--fb92c2bed732d49390eb8862f41d61ad62bd02f8
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/conversations"
ID=1
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \


echo
