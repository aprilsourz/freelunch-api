#!/bin/bash
TOKEN=BAhJIiU3MTRhNWRiZDA4ZTU5NjUyNjVkNzIyNTQzMjgzNDYyNwY6BkVG--aac7316f3c828d6d09fd084c9d3458ccbdb8c3d6
URL_PATH="/conversations"
API="${API_ORIGIN:-http://localhost:4741}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
