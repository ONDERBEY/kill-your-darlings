# Kill Your Darlings | Playbook

Deep methodology for the `kill-your-darlings` skill. Load this when you need the
darling taxonomy, the detection signals, the per-domain research playbook, the
verdict rubric, or a worked example.

## 1. What a darling is (and is not)

A **darling** is an element a maker keeps because of attachment to it, not
because it serves the goal. The defining test:

> If a stranger who cared only about the goal, and knew nothing of the effort
> spent, looked at this element cold, would they keep it?

If the only honest answer is "they would keep it because *I* love it / built it /
am proud of it", it is a darling.

A darling is **not** the same as a flaw or a bug. A bug fails at its job. A
darling does its job beautifully and the job does not need doing. That is what
makes darlings dangerous: they are often the most polished, most defended part.

**Load-bearing** is the opposite of a darling: remove it and the goal measurably
suffers. The skill protects load-bearing elements as hard as it cuts darlings.
Never let the satisfaction of cutting become its own goal.

## 2. Darling detection signals

Flag a candidate when one or more of these is true. More signals = higher
confidence it is a darling.

1. **Defended by emotion or identity, not evidence.** "I love this part." "This
   is the whole soul of it." "It's so *me*." Feeling is the only argument.
2. **Sunk cost.** Justified by effort already spent ("we spent three months on
   this") rather than future value. Past cost is gone; it never argues for
   keeping.
3. **Unrequested scope.** "Wouldn't it be cool if..." Nobody (no user, no goal)
   asked for it. It was added because it was fun or impressive to add.
4. **Solves a non-problem.** Elegant answer to a question the real user does not
   ask. Verify the problem exists before crediting the solution.
5. **Survives by age.** Still here only because it has always been here. Its
   original reason is dead or forgotten.
6. **Complexity as cleverness.** Exists to demonstrate the maker's skill or
   taste. The clever abstraction, the showy flourish, the maximal version.
7. **Vision untethered from validation.** Big bet defended by conviction with
   zero real-world signal behind it. "Trust me, users will love it."
8. **The "kill test" hurts.** When you imagine removing it, the resistance is
   emotional rather than a concrete account of what would break. Strong
   resistance + no concrete loss = strong darling.

## 3. Per-domain research playbook

Be adaptive. Match the evidence-gathering to what the project actually is.

**Software / product feature**
- Read the actual code or spec, not the description.
- Usage data: is the feature used? by whom? how often? (analytics, logs)
- Maintenance cost: lines, dependencies, surface area, bug history.
- Alternative: does a simpler existing path already cover the need?
- Feasibility: prototype or check the hard assumption before it anchors a plan.

**Content / writing (blog, copy, deck, post)**
- Read the full piece. Find the one job it must do for the reader.
- Reader evidence: scroll depth, dwell time, drop-off, what readers quote.
- SERP / intent: what the reader actually searched for vs what you wrote.
- The "skip test": which paragraphs can a busy reader skip with no loss? Those
  are darlings unless they carry the one job.

**Business plan / strategy / pitch**
- Market reality: TAM, demand signal, competitor coverage (web + live Chrome).
- Unit economics: do the numbers survive a cold spreadsheet?
- Customer evidence: real conversations, real money, or assumption?
- The risk you are not naming: find it and name it.

**Design / UX**
- The job-to-be-done per screen. Decoration vs function.
- Does the loved interaction add task success, or just delight the designer?
- Test against a real user task, not the designer's mental model.

For any domain: prefer primary evidence (the data, the user, the live page) over
secondary (opinion, summary, memory). When sources bot-block or need a login,
use live Chrome rather than trusting a curl/WebFetch status. Mark verified vs
assumed.

## 3a. The research protocol (run in order)

SKILL.md Step 2 names the steps; here is the method behind each, so the research
is a procedure, not a vibe.

1. **Frame the open questions.** Convert the maker's claims into falsifiable
   questions. "Users will love it" becomes "which users, and what evidence shows
   the love." Keep 3 to 6; more than that and you are boiling the ocean.
2. **Map the sources** (per question): pick the cheapest source that can actually
   settle it. Primary (the data, the user, the live page) beats secondary
   (opinion, summary, memory). See the evidence map in section 3 and the outside
   view in 3b.
3. **Search outside-in.** Broad first to learn the shape of the space (category
   size, trend direction, the base rate), then narrow to the one number,
   competitor, or post-mortem that decides the call. Broad-then-narrow stops you
   anchoring on the first thing you find.
4. **Triangulate.** One source is a lead; two that agree is a finding. When
   sources disagree, that conflict is itself the insight: report it, do not
   average it away. Watch for a single origin dressed as many (everyone quoting
   one blog post).
5. **Capture evidence cards.** claim | source | date | verified/assumed |
   confidence. Stale data is an assumption: a 2019 number about a 2026 market is
   not verified. Confidence tracks how much of the verdict rests on verified vs
   assumed facts.
6. **Stop rule.** You are done when every open question is answered or honestly
   marked open. A load-bearing question you could not answer caps the verdict's
   confidence and usually means PARK with the cheapest test that would answer it.

**Depth tiers.** Match effort to stakes and reversibility. *Quick:* a reversible,
low-cost element, one or two lookups. *Standard:* a feature or page, one lookup
per applicable lens plus triangulation of the two facts that matter most. *Deep:*
an expensive or hard-to-reverse bet, or an explicit "be thorough", multi-source
per lens, a `deep-research` pass on the hardest lens, and a named base rate. When
unsure, go one tier deeper than feels necessary, then stop at the stop rule.

## 3b. The outside view (the world's verdict)

A reality check that only reads the maker's own materials is half blind. The
strongest signal is outside: what the world already shows about this kind of
thing. Always run a deep search across these four lenses and bring the findings
into the verdict and the report. This is the difference between an opinion and a
grounded call.

1. **Reception | what people said and felt.** How did real people react to this,
   or to the closest existing version of it? Praise, complaints, the feature
   they begged for, the one they ignored. Sources: reviews (G2, App Store,
   Amazon), Reddit and Hacker News threads, YouTube comments, X/LinkedIn replies,
   support tickets, churn reasons. Question it answers: is the love real or
   assumed?

2. **Demand now | what people want today.** Is interest rising, flat, or dying?
   Sources: search-trend direction and rising queries, keyword volume over time,
   "people also ask", marketplace/category growth, what is trending in the space.
   Question: are you building toward where attention is going, or where it was?

3. **Forecast | where this is heading by the time you ship.** A project lands in
   the future, so judge it against the future, not today. Sources: analyst and
   research outlooks (Gartner, McKinsey, industry reports), credible roadmaps,
   platform direction, regulation on the horizon. Question: will the assumption
   the darling rests on still hold when the work matures?

4. **Precedent | what happened to others who tried this (the graveyard).** Base
   rates beat optimism. Who did this before, who won, who died, and why. Sources:
   post-mortems, shutdown notes, case studies, "we tried X and learned Y" write-
   ups, historical analogues. Question: what is the most common way this exact
   bet fails, and are you walking into it?

Concrete base rate to anchor the precedent lens: across CB Insights' analysis of
failed startups, the top root cause is no market need / poor product-market fit
(about 42 to 43%): teams build something people did not want enough to pay for.
"Ran out of money" leads the surface stats (about 70%) but is usually the
symptom, not the cause. Translation for a reality check: most darlings die from
solving a non-problem, not from poor execution. Verify any figure before you
quote it; treat numbers as illustrative unless freshly checked.

Use WebSearch and the firecrawl skills for the sweep, live Chrome for sources
that bot-block or need a login (reviews, social), and the `deep-research` skill
when a lens deserves a multi-source, fact-checked pass. Mark each finding
verified (with source) or assumed.

## 3c. The user's-seat pass (the inside view)

The outside view (3b) is the crowd; this is the individual the work is for. Run it
after the research and before the verdict.

1. **Build a thin persona from evidence, not imagination.** Who is the primary
   user, pulled from real signal (analytics, tickets, reviews, the maker's own
   data) rather than a flattering guess. Note their context: device, time budget,
   expertise, and the job they hired this to do.
2. **Walk the path in first person.** Narrate their actual journey step by step:
   arrival, what they scan for, what they act on, what they skip, where they
   hesitate or bail. For content this is the read-through; for software the task
   flow; for a pitch the reader on slide 3 at minute two.
3. **Score each candidate from that seat.** Helps the job / slows it / unnoticed.
   "Unnoticed" plus "loved by the maker" is the textbook darling.
4. **Then name the maker's stake.** What is the maker holding onto, and which
   rationalization (section 2) is doing the holding. State it plainly and with
   respect; the cut is easier to accept once the attachment is seen, not
   dismissed.

Per domain, the user's seat is: **content**, the busy reader who skims and leaves;
**software**, the user mid-task under time pressure; **product**, the new user in
the first session who has not read the docs; **design**, the person trying to
finish one task, not admire the screen; **business/pitch**, the investor or buyer
asking "so what, for me." Where there is no external user, use the future
maintainer or the future self who inherits it.

A darling confirmed by both the outside view (the world ignored it) and the
user's seat (this user skips it) is a high-confidence CUT. One the maker loves and
the user actually relies on is the load-bearing exception you defend.

## 4. Verdict rubric

| Verdict | Use when | Must include |
|---|---|---|
| KEEP | Removing it measurably hurts the goal | The evidence that makes it load-bearing |
| REWORK | Real need, darling form | The real need + the leaner form |
| CUT | No goal contribution, or cost > contribution | The evidence + what cutting frees up |
| PARK | Genuinely undecidable now | The one cheap test that would decide it |

Confidence: tag each verdict High / Medium / Low based on how much rests on
verified evidence vs assumption. A Low-confidence CUT should usually be a PARK
with a test.

## 5. Tone calibration

The skill is honest, not cruel; supportive of the goal, not of the ego.

- Attack the idea, protect the person. "This feature does not earn its cost" not
  "you wasted your time."
- Name what is genuinely good first. A critique with no acknowledged strengths
  is as miscalibrated as flattery, and it gets ignored.
- Earn the hard cuts. Show the evidence before the verdict so it lands as a
  finding, not an attack.
- Hold the line under pushback. If the user defends a darling with emotion, ask
  for the evidence. If they bring evidence, update honestly.

## 6. Worked example (compressed)

**Request:** "Reality check my SaaS landing page redesign. I added an animated
3D hero that I love."

- **Step 0 goal:** For self-serve SMB buyers, lift trial signups, ship this
  quarter, no extra eng budget.
- **Step 1 context:** Read the page. The 3D hero is above the fold, pushes the
  value prop and CTA below it.
- **Step 2 research:** Live Chrome on the staging page: hero adds 2.1s to
  largest-contentful-paint on a mid-tier phone. Analytics on the current page:
  62% of traffic is mobile; CTA-above-fold variants historically convert higher.
  Competitor pages lead with the value prop, not animation. (verified)
- **Step 3 user's seat:** A mostly-mobile SMB buyer lands wanting to judge the
  product fast. On a phone the hero loads slowly and pushes the value prop and CTA
  off-screen, so they scroll past the animation hunting for what it does. The
  maker's stake: the hero is the craft showpiece of the redesign (rationalization:
  "it makes us different").
- **Step 4 inventory:** The 3D hero is the prime darling: signals 1 (loved), 3
  (unrequested), 6 (complexity-as-cleverness).
- **Step 5 verdict:** CUT (High). It costs 2.1s LCP and pushes the CTA down, on
  a mostly-mobile audience, against the goal of more signups. No evidence it
  lifts conversion; evidence it hurts speed and CTA visibility.
- **Step 6 path:** Lead with value prop + CTA above the fold. If attached to
  motion, REWORK to a lightweight static or CSS treatment. PARK the 3D idea
  behind one test: a 50/50 split where it must beat control on signups to live.

The maker loses the part they loved. The goal wins. That is the whole job.
