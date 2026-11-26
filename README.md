# Agency AI Workspace — Project Folder

A shared AI workspace for marketing agencies (working name TBD).

## Start here (every session, 2 minutes)

1. Open [`status/NOW.md`](status/NOW.md) — it tells you the **one next task**.
2. Open any AI tool and paste [`prompts/session-start.md`](prompts/session-start.md).
3. Work for one focused hour.
4. Before closing: update `status/NOW.md` and add one line to `status/log.md`.

## Sharing context with any AI

| AI tool | How it gets the context |
|---|---|
| Claude Code, Cursor, Copilot, Codex, Gemini CLI | Reads `AGENTS.md` automatically when this folder is open (`CLAUDE.md` imports it) |
| ChatGPT / Claude.ai / Gemini web chat | Run `tools/build-context.ps1`, then upload or paste `dist/context-bundle.md` |
| Claude.ai Project / ChatGPT Project | Upload `dist/context-bundle.md` as project knowledge; re-upload after big changes |

```powershell
# Build the bundle (personal profile excluded by default)
powershell -ExecutionPolicy Bypass -File .\tools\build-context.ps1
# Include the founder profile too
powershell -ExecutionPolicy Bypass -File .\tools\build-context.ps1 -IncludeProfile
```

## Folder layout

```
AGENTS.md            ← single source of truth for AI assistants
CLAUDE.md            ← imports AGENTS.md
status/              ← NOW.md (next task) + log.md (progress)
docs/                ← brief, SWOT, roadmap, architecture, pricing, GTM, decisions
work/                ← actual working files per phase
prompts/             ← copy-paste prompts for any AI
tools/               ← helper scripts
dist/                ← generated bundle (safe to delete, rebuilt by script)
```
