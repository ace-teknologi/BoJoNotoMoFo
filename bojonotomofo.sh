#!/bin/ash

set -euo pipefail

webhook="$SLACK_WEBHOOK"
message=${MESSAGE:-""}

jq -n \
   --arg message "$MESSAGE" \
   '{
      blocks: [
        {
          type: "section",
          text: {
            type: "mrkdwn",
            text: $message
          }
        }
      ]
    }' > data.txt

echo "Hitting the Slack"
curl -s \
  -X POST \
  -H 'Content-type: application/json' \
  --data @data.txt \
  "$webhook"
