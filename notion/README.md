# Weekly Notion export (no live sync)

Cursor `tracker/` is the source of truth. Notion is a **weekly snapshot** for phone revision and progress, not a second daily database.

## Ritual (once a week, ~10 min)

1. Run `./scripts/weekly-notion-export.sh` from the repo root.
2. Open the new file under `notion/outbox/`.
3. Paste or attach it into your Notion “iOS prep” page (or, later, use Notion MCP to update that page).
4. Do not copy unstarred daily drills. Only:
   - topic status counts
   - topics that changed this week
   - every card in `tracker/super-important/`

This workspace already has Notion MCP available. We still **do not** auto-write Notion on daily sessions. Wire MCP on a weekly run only after the first manual paste feels boring.
