# Evals

Test cases for the `kill-your-darlings` skill, in the
[Agent Skills eval format](https://agentskills.io/skill-creation/evaluating-skills).
A skill triggering is not proof it works; these measure both whether it fires on
the right prompts and whether the output is actually grounded.

`evals.json` covers:

1. A clear target with a file (full pipeline, English).
2. A casual Turkish feature idea (language + verdict, not cheerleading).
3. A German pitch-deck slide (language + precedent-grounded verdict).
4. A bare invocation with no target (must ask exactly one scoping question).
5. A private internal tool with no public footprint (no-external-signal handling).

## Run with skill-creator

```
/plugin marketplace add anthropics/claude-plugins-official
/plugin install skill-creator@claude-plugins-official
/reload-plugins
```

Then ask: `evaluate my kill-your-darlings skill with skill-creator`. It runs each
case in a fresh subagent with and without the skill, grades the assertions, and
reports the pass-rate delta plus token and time cost.

## What to watch

- The deep-search assertions (four lenses, verified-vs-assumed) should pass
  **with** the skill and fail **without** it. That delta is the skill's value.
- Case 4 guards against over-eager verdicts before a target is set.
- Case 5 guards against fabricating evidence when the web returns nothing.

## Should-not-trigger (description tuning)

These prompts should NOT pull in the skill; use them with skill-creator's
description-tuning mode:

- "fix the TypeError in utils.py"
- "write a SQL query for monthly active users"
- "summarize this meeting transcript"
