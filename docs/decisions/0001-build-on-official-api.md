# 0001 — Build on official APIs, not shared consumer accounts

- **Status:** Accepted
- **Date:** 2026-11-26

## Context
Sharing one consumer subscription (e.g. Claude Pro) across a team, or automating the
consumer website, breaks provider consumer terms, shares one usage limit, exposes
everyone's chat history, and risks a ban that removes access for all users.

## Decision
The product calls models only through official provider APIs with server-held keys, and
bills users for metered usage.

## Consequences
- Costs are per token, paid to the provider separately from any consumer plan.
- We must meter usage and enforce caps ourselves.
- We can offer any UI, models, and pricing we want, legally.
