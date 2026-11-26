# 02 — SWOT Analysis

**Date:** 2026-11-26
**Subject:** Agency AI workspace (multi-model gateway with per-client usage tracking),
built and sold by a solo founder who runs GrowMos.

## SWOT

| | Helpful | Harmful |
|---|---|---|
| **Internal** | **Strengths** | **Weaknesses** |
| | 1. Rare skill mix: marketing + video + coding + data engineering | 1. Self-reported procrastination: slow to start and finish |
| | 2. Built-in first customer and case study (GrowMos) | 2. Solo founder with limited time; competes with job search for DE roles |
| | 3. Network in Bangladesh, UAE, Australia | 3. No validation yet: no customer has said "I'll pay" |
| | 4. Data stack (SQL, Power BI, dbt) suits usage/cost dashboards, a feature agencies value | 4. Limited capital; can't absorb API cost blowups |
| | 5. Understands agency pain from the inside | 5. Payment rails: Stripe isn't directly available to Bangladesh-registered businesses (verify), which makes international billing harder |
| | 6. Can make demo videos cheaply, so marketing costs little | 6. No SaaS ops experience yet (support, uptime, billing disputes) |
| **External** | **Opportunities** | **Threats** |
| | 1. Agencies must control AI cost per client. Generic tools do this badly | 1. Crowded "one UI, many models" space: OpenRouter, TypingMind, LibreChat, Open WebUI |
| | 2. Local-payment gap: bKash, SSLCommerz and similar for users without international cards | 2. Providers' own team plans (Claude Team, ChatGPT Business) add sharing and admin features and can close the gap |
| | 3. Build-in-public video content brings audience and accountability | 3. Provider price, model or policy changes can break margins overnight |
| | 4. Upsell to existing GrowMos clients and network | 4. Single-provider dependency |
| | 5. Shared prompt templates: ready marketing prompt packs as a sellable asset | 5. A heavy user can cause cost blowups; payment fraud and chargebacks |
| | 6. Data reporting: exportable per-client AI cost reports agencies can bill back | 6. Users who break provider usage policies can put the API account at risk |
| | | 7. Privacy and legal liability for client data; tax rules for international SaaS sales |
| | | 8. Open-source licence limits on rebranding (Open WebUI has a branding clause; verify) |

## Strategy (TOWS): what to do about it

| Combination | Strategy |
|---|---|
| **S–O** (use strengths for opportunities) | Position tightly on **per-client AI cost tracking + reports**, built with the data stack. Sell to agencies through the network, using GrowMos's real numbers as the case study. |
| **S–T** (use strengths against threats) | Beat generic tools on **niche and marketing**, not technology: agency prompt packs, client-billing reports, video demos. Most competitors have the tech but weak marketing. |
| **W–O** (fix weaknesses with opportunities) | Fight procrastination with **public commitment**: build-in-public clips plus paid pilots create outside deadlines. Start from open source so less building is needed. |
| **W–T** (defend weak spots) | Use **prepaid credits and hard caps** so a heavy user can't hurt you. Use a **provider adapter layer** so you're never locked to one provider. Collect payment manually until volume justifies automation. Get a legal and tax check before scaling. |

## Biggest risk not stressed in the original chat

**Providers' own team plans are a direct substitute.** If an agency can buy Claude Team
or ChatGPT Business and get shared projects plus admin controls, "team access" alone is
not enough. The product must win on things those plans don't do well:

1. **Per-client** cost tracking and billing-ready reports
2. **Multi-model** choice under one bill
3. **Local payment** methods and local pricing
4. **Agency-specific** prompt library and workflows

Test these four in Phase 0 interviews. If prospects say "we'd just buy ChatGPT Team",
change direction early.

## Decision rule for Phase 0

- ≥ 5 "would pay" and ≥ 3 paid pilots by **2026-12-03** → go to Phase 1.
- Fewer → change the niche or the promise, and run Phase 0 again for one more week.
- Still nothing after 2 rounds → stop, or pivot to selling prompt packs or AI services
  through GrowMos.
