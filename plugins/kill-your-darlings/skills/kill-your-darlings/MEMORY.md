# Kill Your Darlings | Memory

This is the skill's running memory: what it has learned across reality checks.
The skill reads this at the start of a session and appends to it at the end.

## Where memory actually lives

The file shipped here is the **seed and the format spec**. It sits in the
plugin's read-only directory, so the skill never writes here. At runtime it reads
this seed plus the active memory, and writes new entries to a writable location,
in this priority:

1. **Project-scoped (preferred):** `./.kill-your-darlings/MEMORY.md` at the root
   of the project under review. Learnings travel with the project and the team.
2. **User-global (fallback):** `~/.claude/kill-your-darlings/MEMORY.md` for
   cross-project tendencies (for example, a maker who repeatedly over-scopes).

On first use in a project, the skill copies this seed to
`./.kill-your-darlings/MEMORY.md`, then maintains that copy. Generated audits and
HTML reports go beside it under `./.kill-your-darlings/audits/`.

## Entry format

Append one block per reality check. Keep entries short and factual.

```
## <date> | <project or scope>
- Goal: <one line>
- Darlings: <name> -> <KEEP|CUT|REWORK|PARK> (<one-line reason>)
- Pattern: <recurring darling type, link to knowledge-base section if any>
- Maker tendency: <e.g. over-scopes, sunk-cost attached, trend-chases>
- Outcome: <what happened after, filled in later>
```

Link reusable patterns to the knowledge base with `[[knowledge-base#section]]`.
When a tendency or pattern shows up in three or more entries, promote it into
`knowledge/knowledge-base.md` so every future session benefits.

## What to record (and what not to)

Record: recurring darling types, a maker's blind spots, verdicts that were later
proven right or wrong, evidence sources that worked for a domain.

Do not record: one-off project trivia, anything secret or sensitive, or facts
already in the code, the repo, or the knowledge base.

## Index

One line per entry, newest first. (Seed is empty.)

<!-- - 2026-06-25 | <project> | <hook> -->
