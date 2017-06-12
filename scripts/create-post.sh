#!/bin/bash
STRING="snow" TEXT="snow" TOKEN="BAhJIiU1NDBiOGRlN2I1ZDg3YmM2ZTljYjMyYmNkMGM1NTc2NwY6BkVG--21b418c8cd453fdca14cd7f95a53e3f9e90fcd03"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "post": {
      "name": "'"${STRING}"'",
      "title": "'"${STRING}"'",
      "content": "'"${TEXT}"'"
    }
  }'

echo
