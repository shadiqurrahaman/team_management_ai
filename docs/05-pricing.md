# 05 — Pricing & Unit Economics

Status: **draft.** Fill in real numbers after checking current provider API prices.
Don't invent prices; mark unknowns as TBD.

## Pricing models considered

| Model | How it works | Risk |
|---|---|---|
| **Prepaid credits** ✅ | Users buy credits and spend them | Lowest. You never lose money on heavy users |
| Subscription with included usage | e.g. fixed monthly fee includes X usage | Heavy users eat the margin; needs caps |
| Pay-as-you-go + markup | Model cost + 20–40% | Billing complexity; chargeback risk |

**Chosen direction:** prepaid credits + a small monthly platform fee per workspace
(ADR 0003).

## Unit-economics formula

```
cost_per_request   = input_tokens  × input_price_per_token
                   + output_tokens × output_price_per_token
credit_price       = cost_per_request × (1 + markup)          # markup 0.20–0.40
monthly_revenue    = platform_fee × workspaces + Σ credits sold
gross_margin       = (monthly_revenue − API cost − payment fees − hosting) / monthly_revenue
```

## Numbers to fill in

| Item | Value | Source |
|---|---|---|
| API price per 1M input tokens (per model) | TBD | provider pricing page |
| API price per 1M output tokens (per model) | TBD | provider pricing page |
| Avg tokens per agency request | TBD | measure on GrowMos pilot |
| Requests per user per day | TBD | measure on GrowMos pilot |
| Payment gateway fee % | TBD | gateway pricing |
| Hosting per month | TBD | |
| Platform fee per workspace | TBD | from Phase 0 interviews ("what would you pay?") |
| Markup | 20–40% | |

## Reference: why not resell consumer plans

Consumer plans (such as Claude Pro) are for one person, don't include API usage, and
forbid account sharing. Team plans exist for teams (minimum 2 seats; third-party guides
list roughly $20–25 per Standard seat per month, **verify**). Our product sits on the
**API**, not on those plans.
