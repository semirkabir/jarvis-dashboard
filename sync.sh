#!/bin/bash
# Sync Jarvis Dashboard to GitHub Pages

DASHBOARD_DIR="/root/clawd/jarvis-dashboard"
SOURCE_DATA="/root/clawd/dashboard/request-log.json"
DEST_DATA="$DASHBOARD_DIR/request-log.json"

# Copy the latest request log
cp "$SOURCE_DATA" "$DEST_DATA"

# Commit and push
cd "$DASHBOARD_DIR"
git add request-log.json
git diff --quiet && git diff --staged --quiet || git commit -m "Update request-log.json - $(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub (replace with your username)
# Uncomment the line below after adding your remote:
# git push origin main

echo "Dashboard data synced locally. Run 'git push origin main' to update GitHub Pages."
