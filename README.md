# ios-interview-lab

Senior iOS / SDE-2 prep. India, 4+ YOE. **This repo is the tracker.** Notion gets a weekly snapshot only.

## Layout

| Path | What it is |
| --- | --- |
| `tracker/topics.json` | Curriculum. Tick `not_started` → `in_progress` → `drilled` or `starred`. |
| `tracker/super-important/` | Short list you re-answer (theory + generic Swift). |
| `drills/YYYY-MM-DD/` | Daily 3 code answers + optional questions-from-diff. |
| `swiftui-lab/` | Separate newbie SwiftUI app track (app scaffolded when we start it). |
| `notion/outbox/` | Weekly markdown to paste into Notion. |
| `scripts/weekly-notion-export.sh` | Builds that outbox file. |

## A normal day (~60–90 min)

1. Say **“daily 3”** in this project chat. I pick 3 uncovered topics in `pick_order` (Swift + UIKit fundamentals first) and write `drills/YYYY-MM-DD/`.
2. You implement in the three `.swift` files.
3. I review those files. You mark anything **super important**; I add a card and tick `topics.json`.
4. Optional: SwiftUI concept spec → you implement in `swiftui-lab/` → review → maybe one starred card.
5. If you also coded other Swift that day: I add questions to `from-code.md`. Star only the real ones.

Weekly: `./scripts/weekly-notion-export.sh` then paste `notion/outbox/` into Notion. No live dual-write.

Custom Cursor agent / automation comes **after** this loop is boring. Not before.

## Status words

`not_started` → `in_progress` → `drilled` (done, not saved) or `starred` (saved to super-important).
