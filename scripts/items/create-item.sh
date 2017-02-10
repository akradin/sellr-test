# TOKEN="BBAhJIiUzNGU4NjgzNjVhOGE3MjI0ZWEyOGU0NDlhYTQ2NzMzMwY6BkVG--e970c33664614f7e8a991f813fc70e70393ea855"
# --header "Authorization: Token token=${TOKEN}" \

curl --include --request POST http://localhost:3000/items \
--header "Content-Type: application/json" \
  --data '{
    "item": {
      "name": "test"
    }
  }'
