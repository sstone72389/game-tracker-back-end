#!/bin/bash
ID="1" TOKEN="BAhJIiU1NDBiOGRlN2I1ZDg3YmM2ZTljYjMyYmNkMGM1NTc2NwY6BkVG--21b418c8cd453fdca14cd7f95a53e3f9e90fcd03"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
