#!/bin/bash
TOKEN=BAhJIiU3MWQ2NzlmYTI4OTEzZTc4MWRhOGIyNmM0Nzc0MWQwMAY6BkVG--58565e48e39dfe445f0c8bfc03dc64591771ce75
NAME=recruiter3
WEBSITE=recruiter3
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
