# Task Prompts (copy one, fill the braces)

## Turn prospects into messages
Using `work/phase-0-validation/outreach-messages.md` as the template, write a
personalized message for each row in `prospects.csv` with status `todo`. Use
{channel}. Keep each under 80 words.

## Analyze interview results
Read `prospects.csv`. Summarize: top 3 pains (with counts), price range people named,
how many mentioned ChatGPT/Claude Team as an alternative, and a go/no-go against the
rule in `docs/02-swot.md`.

## Write a build-in-public video script
Write a 45-second vertical video script for day {n}. Topic: {what I did}. Hook in the
first 3 seconds, one insight, one call to action (join waitlist). Include a shot list.

## Draft a decision record
I decided {decision} because {reason}. Write `docs/decisions/NNNN-{slug}.md` using the
same format as 0001.

## Plan a coding task (Phase 1+)
Read `docs/04-architecture.md`. Break "{feature}" into steps of ≤ 60 minutes each, list
the files to touch, and give me only step 1 in full detail.
