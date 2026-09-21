#!/bin/zsh
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
out_dir="$root/notion/outbox"
mkdir -p "$out_dir"

week="$(date +%Y-W%V)"
stamp="$(date +%Y-%m-%d)"
out="$out_dir/${week}.md"

topics="$root/tracker/topics.json"
if [[ ! -f "$topics" ]]; then
  echo "Missing $topics" >&2
  exit 1
fi

python3 - "$topics" "$out" "$week" "$stamp" "$root" <<'PY'
import json, sys, pathlib, datetime

topics_path, out_path, week, stamp, root = sys.argv[1:6]
data = json.loads(pathlib.Path(topics_path).read_text())
items = []
for track in data.get("tracks", []):
    for item in track.get("items", []):
        items.append((track["id"], track["title"], item))

def count(status):
    return sum(1 for _, _, it in items if it.get("status") == status)

changed = [
    f"- [{t_title}] {it['title']} (`{it['status']}`)"
    for _, t_title, it in items
    if it.get("status") != "not_started"
]

cards_dir = pathlib.Path(root) / "tracker" / "super-important"
card_files = sorted(
    p for p in cards_dir.glob("*.md") if p.name != ".gitkeep"
)

lines = [
    f"# iOS prep — {week} (exported {stamp})",
    "",
    "## Counts",
    f"- not_started: {count('not_started')}",
    f"- in_progress: {count('in_progress')}",
    f"- drilled: {count('drilled')}",
    f"- starred: {count('starred')}",
    f"- total: {len(items)}",
    "",
    "## Ticked or in progress",
    *(changed or ["- (none yet)"]),
    "",
    "## Super important cards",
]
if card_files:
    for p in card_files:
        lines.append(f"### {p.stem}")
        lines.append("")
        lines.append(p.read_text().strip())
        lines.append("")
else:
    lines.append("- (none yet)")
    lines.append("")

lines += [
    "## Next week",
    "- Daily 3 from remaining `not_started`, language/concurrency first.",
    "- Paste this file into Notion. Do not make Notion the daily tracker.",
    "",
]
pathlib.Path(out_path).write_text("\n".join(lines))
print(out_path)
PY
