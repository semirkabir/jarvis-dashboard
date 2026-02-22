#!/bin/bash
# Log a new request to the dashboard
# Usage: log-request.sh "request text" "category" "status"

REQUEST_FILE="/root/clawd/dashboard/request-log.json"
REQUEST_TEXT="$1"
CATEGORY="${2:-💬 Conversation}"
STATUS="${3:-completed}"
TIMESTAMP=$(date +%s)

# Create file if it doesn't exist
if [ ! -f "$REQUEST_FILE" ]; then
    echo '{"lastUpdated":0,"requests":[]}' > "$REQUEST_FILE"
fi

# Add new request
jq --arg text "$REQUEST_TEXT" \
   --arg category "$CATEGORY" \
   --arg status "$STATUS" \
   --arg timestamp "$TIMESTAMP" \
   '.lastUpdated = $timestamp | .requests += [{
     "text": $text,
     "category": $category,
     "status": $status,
     "timestamp": ($timestamp | tonumber)
   }]' "$REQUEST_FILE" > "${REQUEST_FILE}.tmp" && mv "${REQUEST_FILE}.tmp" "$REQUEST_FILE"

echo "Logged: $REQUEST_TEXT ($CATEGORY)"
