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
- **Step 3 inventory:** The 3D hero is the prime darling: signals 1 (loved), 3
  (unrequested), 6 (complexity-as-cleverness).
- **Step 4 verdict:** CUT (High). It costs 2.1s LCP and pushes the CTA down, on
  a mostly-mobile audience, against the goal of more signups. No evidence it
  lifts conversion; evidence it hurts speed and CTA visibility.
- **Step 5 path:** Lead with value prop + CTA above the fold. If attached to
  motion, REWORK to a lightweight static or CSS treatment. PARK the 3D idea
  behind one test: a 50/50 split where it must beat control on signups to live.

The maker loses the part they loved. The goal wins. That is the whole job.
