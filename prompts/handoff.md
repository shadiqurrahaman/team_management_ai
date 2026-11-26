# Handoff Prompt (end of a long session or switching AI tools)

Paste this at the end of a session so the next AI (or you, next week) can continue
without losing context:

---

Summarize this session as a handoff note for another AI assistant. Use exactly these
headings, plain Markdown, max 15 lines:

- **Decisions made** (if any is significant, draft a new `docs/decisions/NNNN-*.md`)
- **Files to update** (path + what changes)
- **Open questions**
- **Next single task** (≤ 60 min, with "done when")
- **Log line:** `YYYY-MM-DD — Did: … | Stuck on: … | Next: …`

Don't repeat information that's already in AGENTS.md or the docs.
