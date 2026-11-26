# AGENTS.md — Project Context (read this first)

> This is the **single source of truth** for any AI assistant (Claude, ChatGPT, Copilot,
> Cursor, Gemini, Codex) working on this project. Other tool-specific files only point here.
> Keep it short. Details live in `docs/`.

## 1. What we are building

**A shared AI workspace for marketing agencies.** Agency teams log in, pick an AI model,
use ready-made marketing prompts, and every request is tracked **per client** and **per
person** — with one bill and spending limits.

- **One-sentence promise (draft):** "One AI workspace for your whole agency: ready-made
  prompts, one bill, and AI cost tracked per client."
- **Working name:** TBD (see `docs/decisions/`)
- **Owner:** Shadiqur (founder, GrowMos). Solo founder.
- **First customer:** GrowMos itself (dogfooding + case study).

## 2. Current status

👉 **Always read [`status/NOW.md`](status/NOW.md) before doing anything.** It holds the
current phase and the **one next task**.

Phase plan: `docs/03-roadmap.md`
- Phase 0 — Validate (no code) ← **we are here**
- Phase 1 — Concierge MVP on open-source chat UI
- Phase 2 — Automate billing, teams, usage dashboards

## 3. Non-negotiable rules

1. **Official APIs only.** Never pool, share, or automate consumer subscriptions
   (claude.ai, chatgpt.com). It breaks provider terms and gets accounts banned.
2. **API keys live only on the server.** Never in frontend code, never in git, never in chat.
   Use environment variables / a secret manager.
3. **Validate before building.** No new feature without a customer asking for it.
4. **Prepaid credits + hard spending caps** per user and per day. Never risk a surprise bill.
5. **Provider-agnostic design.** Model calls go through one adapter layer so models and
   providers can be swapped.
6. **Privacy:** clear data policy, users can delete chats, client data never mixed between
   workspaces.

## 4. How to help the founder (important)

The founder has strong skills (marketing, video, coding, data stack) but says they are
**slow to start and finish**. When assisting:

- Give **one small next task** (≤ 60 min), not a big plan.
- End every session by updating `status/NOW.md` and adding a line to `status/log.md`.
- Prefer ready-made tools over custom builds.
- Push toward **shipping something visible every week** (a page, a clip, a message, a feature).
- Don't polish. v1 may look slightly embarrassing.

Session start template: `prompts/session-start.md`.

## 5. Map of this repo

| Path | What it holds |
|---|---|
| `status/NOW.md` | Current phase + the single next task |
| `status/log.md` | Dated check-in log (what was done, blockers) |
| `docs/01-product-brief.md` | Problem, customer, promise, feature scope v1/v2/v3 |
| `docs/02-swot.md` | SWOT + strategy (TOWS) analysis |
| `docs/03-roadmap.md` | Phases, weekly goals, money targets |
| `docs/04-architecture.md` | Tech stack, gateway design, data model |
| `docs/05-pricing.md` | Pricing models and unit-economics formula |
| `docs/06-go-to-market.md` | Video-first marketing + outreach plan |
| `docs/decisions/` | Decision records (ADRs), one file per decision |
| `docs/founder-profile.md` | Founder background — **personal, local only (gitignored, repo is public)** |
| `work/phase-0-validation/` | Prospect list, outreach messages, interview script, landing copy |
| `prompts/` | Reusable prompts to start, check in, and hand off sessions with any AI |
| `tools/build-context.ps1` | Bundles all context into one file for chat AIs |

## 6. Conventions

- All docs are plain Markdown. Diagrams use Mermaid.
- Plain, simple English. Short sentences.
- Dates are absolute (`YYYY-MM-DD`).
- Numbers from third-party sources (prices, limits) are marked **(verify)** until checked
  on the official page.
- A new decision gets a new file in `docs/decisions/NNNN-title.md`; never silently change
  an old decision — mark it "Superseded by NNNN".
