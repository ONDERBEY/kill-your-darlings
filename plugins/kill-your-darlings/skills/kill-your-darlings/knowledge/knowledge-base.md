# Kill Your Darlings | Knowledge Base

A living data library the skill draws on during a reality check. Unlike
`references/playbook.md` (the fixed methodology, how to think), this file is
**data that grows**: patterns, rebuttals, evidence sources, and a log of real
calls. Read it before a session. Append to it after one when you learned
something reusable.

> Write rule: the curated entries below ship with the skill. Session-specific
> learnings go in the runtime memory (see `MEMORY.md`), not here. Promote a
> learning into this file only when it generalizes beyond one project.

---

## 1. Darling pattern catalog

Common darlings by domain, why they survive, and the usual verdict. Match a
candidate to a row, then still verify against the real goal and evidence.

| Domain | The darling | Why it survives | Usual verdict |
|---|---|---|---|
| Software | The clever abstraction / framework nobody needed yet | Shows engineering taste | CUT or REWORK to the simple version |
| Software | The half-used feature kept "because we built it" | Sunk cost | CUT if usage data is thin |
| Software | Configurability for cases that never occur | Feels future-proof | CUT, add it when a real case arrives |
| Content | The beautiful intro that delays the answer | Writer's pride | REWORK: lead with the answer |
| Content | The section the reader skips | "It's thorough" | CUT |
| Content | Clever wordplay that obscures meaning | Sounds smart | REWORK to plain language |
| Product | The pet feature from a loud internal voice | Politics / ego | PARK behind a usage test |
| Product | The "platform play" with no first use case | Grand vision | PARK or CUT until one real use case exists |
| Design | Decoration that adds load, not task success | Designer delight | CUT or REWORK to lightweight |
| Design | Custom UI where a standard pattern works | Originality | REWORK to the familiar pattern |
| Business | The revenue line with no demand signal | Hope | PARK behind a demand test |
| Business | The feature/market kept out of fear of "giving up" | Loss aversion | CUT, name the opportunity cost |

## 2. Rationalization to rebuttal

The sentences people say to protect a darling, and the honest counter. When you
hear the left column, reach for the right.

| What they say | The rebuttal |
|---|---|
| "But I worked so hard on it." | Past effort is spent either way. The only question is future value. |
| "It's the soul of the project." | Name the goal. If it does not serve the goal, the goal has no soul to lose. |
| "Users will love it." | Which users said so? Show the signal, or call it a hypothesis and test it. |
| "It makes us different." | Different is only worth it if different is better for the goal. |
| "We might need it later." | Then add it later, cheaply, when the need is real. Carrying it now has a cost. |
| "Competitors have it." | Parity is not a reason. Does it move your goal? |
| "It's almost done." | Almost-done is a sunk-cost trap. Judge the finished thing's value, not its progress. |
| "It's just a small thing." | Small things compound into bloat. Small also means small loss if cut. |

## 3. Evidence source map

Where to get real evidence instead of guessing, by domain. Always prefer primary
evidence (the data, the user, the live page) over opinion or memory.

| Domain | Real evidence | How to get it |
|---|---|---|
| Software | Usage, errors, cost | analytics/logs, feature flags, error tracker, repo history |
| Software | Feasibility | a quick prototype, the dependency's real docs, a benchmark |
| Content | Reader behavior | scroll depth, dwell time, drop-off, what gets quoted/linked |
| Content | Intent | the actual search query and SERP, real reader questions |
| Product | Demand | interviews, willingness to pay, waitlist conversion, fake-door test |
| Product | Adoption | cohort retention, activation funnel |
| Design | Task success | a 5-user task test, click/heatmap data |
| Business | Market | TAM sources, competitor pricing pages (live), customer conversations |
| Business | Unit economics | a cold spreadsheet: CAC, LTV, margin, payback |
| Any | Live/blocked sources | use real Chrome when a source bot-blocks or needs login; do not trust a bot-fetched status |

## 4. Killed darlings log

A growing record of real verdicts and what happened. Each entry teaches the next
call. Add one whenever a verdict was acted on and you can see the outcome.

Format per entry: `- [date] domain | darling | verdict | reason | outcome`

<!-- seed entries; replace with real ones over time -->
- (example) 2026-06-25 design | animated 3D landing hero | CUT | +2.1s LCP on mostly-mobile traffic, no conversion lift | (outcome: pending)

## 5. Open questions to revisit

Unknowns that blocked a clean verdict, parked for a future check. Clear them when
evidence arrives.

- (none yet)
