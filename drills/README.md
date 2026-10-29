# Daily drills

One folder per day: `drills/YYYY-MM-DD/`.

Copy `_template/` when a session starts.

| File | When | Who |
| --- | --- | --- |
| `00-theory.md` | Teach step, before any questions | Agent |
| `00-brief.md` | **After** doubts are cleared | Agent (Write prompts only) |
| `01-*.swift`, `02-*.swift`, `03-*.swift` | Same moment as the brief | You answer |
| `from-code.md` | Optional, other Swift diffs that day | Agent, then you star |

## Session order

1. Pick 3 uncovered topics (`pick_order`).
2. Deep theory + examples (`00-theory.md` + chat). **Stop. Ask doubts.**
3. Clear doubts (loop in chat; update theory if a hole shows up).
4. Only then: code prompts in `00-brief.md` + empty `01`/`02`/`03` files.
5. You write. Review. Tick `in_progress` → `drilled` or `starred`.
