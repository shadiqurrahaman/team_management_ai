# 0002 — Start from an open-source chat UI

- **Status:** Proposed (needs licence check before Phase 1)
- **Date:** 2026-11-26

## Context
Building chat, streaming, model switching and auth from scratch delays selling by
months, and the founder does better with fewer, smaller build tasks.

## Options
| Option | Notes |
|---|---|
| LibreChat | Multi-provider, multi-user. Check the licence (believed permissive; verify) |
| Open WebUI | Popular. Newer licence versions include a **branding clause** that limits rebranding (verify terms for commercial white-labelling) |
| Build from scratch | Full control, slowest |

## Decision (pending)
Pick the base whose licence allows commercial use **and** rebranding. Record the
licence name, version checked and date here before accepting.

## Consequences
- Fast concierge MVP.
- Per-client tracking may need a small custom layer on top of the base app.
