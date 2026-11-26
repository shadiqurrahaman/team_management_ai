# 01 — Product Brief

## Problem

Agencies already use AI every day (ad copy, reports, audits), but:

- Each person pays for their own AI subscription → messy, scattered bills.
- Nobody knows **how much AI cost goes to which client**, so it can't be billed back.
- Good prompts live in one person's head or chat history, not shared across the team.
- Client data gets mixed in personal chat histories.
- Sharing one consumer account is against provider terms and drains shared limits.
- In Bangladesh and similar markets, many people can't easily pay for foreign
  subscriptions with international cards.

## Target customer

> **Decision pending — finalize in Phase 0 (see `status/NOW.md`).**

Primary candidate: **small and mid-size digital marketing agencies (3–30 people)** in
Bangladesh, UAE, and Australia (founder's existing network).

Alternates considered: small businesses wanting cheap team AI access; Bangladeshi users
needing local payment options.

## Promise (draft)

"One AI workspace for your whole agency: ready-made prompts, one bill, and AI cost
tracked per client."

## Solution in one picture

User logs in → picks a client + model → uses a prompt template or chats → backend calls
the official AI API → answer streams back → usage is logged against **user + client** →
credits are deducted → admin sees cost per client/person.

## Scope

### v1 — Must have (Phase 1)
- Sign up / login (email, Google)
- Chat with streaming answers
- Model picker (fast-cheap / balanced / strongest)
- **Client tag on every chat** (the core differentiator)
- Usage meter per user
- Spending limit per user and per day
- Manual billing (invoice / payment link)
- Basic admin view: users and cost

### v2 — Nice to have (Phase 2)
- Automatic payments + prepaid credits
- Teams/workspaces with admin and members
- Shared agency prompt library (ad copy, audits, reports)
- **Usage dashboard per client and per person** (founder's data-stack strength)
- Chat history with search; file upload (PDF, images)
- Multiple providers

### v3 — Later
- Smart routing (easy questions → cheap models)
- Custom assistants with preset instructions
- API access for customers
- Exportable usage reports for billing clients

## Out of scope (for now)
- Building our own chat UI from scratch
- Anything that uses consumer subscriptions instead of APIs
- Mobile apps
