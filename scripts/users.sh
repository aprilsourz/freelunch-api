#!/bin/bash
TOKEN="BAhJIiU3NTFjMWVlNDIyMjY0MGFiOGU0MDA4OWI5MGZiODE5OQY6BkVG--be5fb96873d40514667bf67aac41d86da4d0cf0b"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
