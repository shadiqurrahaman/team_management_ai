# 0003 — Prepaid credits + small platform fee

- **Status:** Accepted (numbers TBD in `docs/05-pricing.md`)
- **Date:** 2026-11-26

## Context
A solo founder with limited capital cannot absorb one heavy user's API bill, chargebacks,
or unpaid invoices.

## Decision
Customers buy credits in advance. Usage is deducted from credits. A small monthly
platform fee per workspace covers hosting and support. Hard caps apply per user and per
day.

## Consequences
- No surprise bills and low fraud risk.
- Needs a credit ledger from day one (manual spreadsheet in Phase 1 is acceptable).
