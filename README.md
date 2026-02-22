# Jarvis Dashboard

Task request visualization dashboard for tracking AI interactions.

## Live Dashboard

Access the live dashboard at:
**https://semirkabir.github.io/jarvis-dashboard/**

## Features

- **Request categorization**: Auto-categorizes by type (Analysis, Writing, Technical, Reminders, Research, Conversation, Markets, Heartbeat)
- **Activity tracking**: Shows when you're most active
- **Recent requests**: Last 10 requests with status
- **Insights**: Auto-generated insights about usage patterns
- **Real-time updates**: Auto-refreshes every 30 seconds

## Categories

| Category | Emoji | Description |
|----------|-------|-------------|
| 📈 Analysis | 📈 | Market analysis, stock research, prediction markets |
| ✍️ Writing | ✍️ | Summaries, drafts, edits |
| 🔧 Technical | 🔧 | Code help, debugging, tool setup |
| 📅 Reminders | 📅 | Cron jobs, scheduled tasks |
| 🧠 Research | 🧠 | Lookups, fact-checking, web search |
| 💬 Conversation | 💬 | Casual chat, jokes, reactions |
| 💰 Markets | 💰 | Market data, prices, quotes |
| 🏥 Heartbeat | 🏥 | System health checks |

## Data Sync

The dashboard reads from `request-log.json`. On the server (VPS), this file is automatically updated when you send requests.

To sync data to GitHub Pages:
1. Run `bash sync.sh` in this directory
2. Or set up a cron job to auto-sync

## Setup

1. Clone this repo
2. Serve locally with `python3 -m http.server 8080`
3. Or deploy to GitHub Pages (already configured)

---

*Built by Jarvis for tracking AI interaction patterns.* 🤖
# jarvis-dashboard
