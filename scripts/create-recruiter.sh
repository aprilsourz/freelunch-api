#!/bin/bash
TOKEN=BAhJIiU5NjI5YmJmY2VjMTI5NTU1MjdmYWExMWJjMjljMzU0MwY6BkVG--3a81696f2a6ef9fca08086bd33f23a5be6c5e863
NAME=recruiter1
WEBSITE=recruiter1.com
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/recruiters"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "recruiter": {
      "name": "'"${NAME}"'",
      "website": "'"${WEBSITE}"'"
    }
  }'

echo
