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

## A normal day

1. Say **“daily 3”**. I pick 3 uncovered topics in `pick_order` and teach them: deep theory + examples in chat and `drills/YYYY-MM-DD/00-theory.md`. **No questions yet.**
2. I ask for doubts. We loop until you say they are cleared (or you have none).
3. Only then I write the 3 code prompts (`00-brief.md` + `01`/`02`/`03` `.swift` files). You implement.
4. I review those files. You mark **super important**; I add a card and tick `topics.json`.
5. Optional: SwiftUI lab the same day. Other Swift you wrote → `from-code.md`.

Weekly: `./scripts/weekly-notion-export.sh` then paste `notion/outbox/` into Notion. No live dual-write.

Custom Cursor agent / automation comes **after** this loop is boring. Not before.

## Status words

`not_started` → `in_progress` → `drilled` (done, not saved) or `starred` (saved to super-important).
