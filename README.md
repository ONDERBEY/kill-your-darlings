<p align="center">
  <img src="docs/banner.png" alt="Kill Your Darlings" width="100%">
</p>

# Kill Your Darlings

> "Kill your darlings, kill your darlings, even when it breaks your egocentric
> little scribbler's heart, kill your darlings."

A Claude Code skill that does the one thing your tools, your teammates, and your
own brain are all too polite to do: tell you which parts of your project to cut.
And unlike a devil's-advocate prompt, it does not just argue with you, it checks:
it researches the real world (reception, demand, forecast, precedent) before it
rules.

![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![Claude Code](https://img.shields.io/badge/Claude%20Code-plugin-8A63D2.svg)
![Languages](https://img.shields.io/badge/triggers-EN%20%7C%20TR%20%7C%20DE-green.svg)

---

## The problem

You fall in love with your own ideas. The clever feature nobody asked for. The
paragraph you adore but the reader skips. The pivot you are emotionally married
to. These are your *darlings*, and they are invisible to the person who made
them, which is exactly why they survive.

AI assistants make this worse, not better. Ask most of them what they think of
your plan and they will find something nice to say. A yes-man with a bigger
vocabulary is still a yes-man. What a project actually needs is the opposite: a
partner that anchors the goal, checks reality, and is willing to say "cut it."

## What this is

`kill-your-darlings` is a Claude Code skill that runs a disciplined reality
check on any project, plan, draft, feature, roadmap, or pitch. It is not a hype
machine and not a hatchet. It is a scalpel guided by your goal and by real-world
evidence. It will cut what does not serve the work, defend what genuinely does,
and refuse to deliver a verdict it has not grounded in reality.

A *darling* is anything kept for the maker's sake, not the goal's sake. The test
it applies:

> If a stranger who cared only about the goal, and knew nothing of the effort
> you spent, looked at this cold, would they keep it?

## How it works

1. **Anchor the goal.** One sentence: for whom, what outcome, by when, under what
   hard constraint. You cannot spot a darling without a goal to judge it against.
2. **The no-assumption gate.** It refuses to judge what it has not grounded. It
   reads your actual files, draft, or data, then researches the real world with
   web search and live Chrome instead of guessing about your market, users, or
   numbers. Every load-bearing fact is marked verified or assumed.
3. **Inventory the darlings.** It names the things you are attached to, using a
   taxonomy of detection signals (defended by emotion not evidence, sunk cost,
   unrequested scope, solves a non-problem, survives by age, complexity as
   cleverness, vision untethered from validation).
4. **Stress-test each one.** Every candidate gets a verdict: **KEEP** (load
   bearing), **REWORK** (real need, darling form), **CUT** (cost beats value),
   or **PARK** (undecidable, here is the cheap test that decides it).
5. **Get back on track.** A lean core, a kill list, and the next concrete moves
   ordered by impact.

It is adaptive. Code, content, product, design, and business plans each get a
matching research playbook. See
[the playbook](plugins/kill-your-darlings/skills/kill-your-darlings/references/playbook.md).

## It learns, and it can show its work

- **The outside view.** It does not just read your files. It runs a deep search
  for what the world already shows: who said what and what they liked
  (reception), what people want right now (demand), what research forecasts for
  the space, and what happened to others who tried this before (precedent, the
  graveyard). These insights land in the verdict and in the HTML report, not just
  the chat.
- **Memory.** It reads a running memory at the start and appends what it learned
  at the end, so it gets to know your blind spots over time (the maker who keeps
  over-scoping, the one who is sunk-cost attached). Memory lives in your project
  at `./.kill-your-darlings/`, not buried in the plugin.
- **Knowledge base.** A living library of darling patterns, the excuses people
  use to keep them and the honest rebuttals, and where to find real evidence per
  domain. It grows as it is used.
- **Plain-language explanations.** When a call is hard or needs buy-in, it can
  explain the verdict simply, using basic design principles, right in the chat
  or as a clean one-page HTML report you can open and share.

## Install

### As a plugin (recommended)

```
/plugin marketplace add ONDERBEY/kill-your-darlings
/plugin install kill-your-darlings@kill-your-darlings
```

Then invoke it with `/kill-your-darlings` or just talk to it (see below).

### Manually (copy the skill)

```bash
git clone https://github.com/ONDERBEY/kill-your-darlings.git
cp -r kill-your-darlings/plugins/kill-your-darlings/skills/kill-your-darlings \
      ~/.claude/skills/kill-your-darlings
```

The skill is now available in any Claude Code session.

## Usage

Invoke it explicitly with `/kill-your-darlings`, or just type the one-word
trigger **`killdarlings`** (works in any language). It also fires on plain
language in three languages:

- **English:** "reality check this plan", "be brutally honest", "am I deluding
  myself", "should I cut this", "play devil's advocate", "is this worth
  building", "talk me out of it".
- **Turkish:** "gercekci ol", "ayaklarimi yere bastir", "hayalperestligimi kes",
  "bunu kessem mi", "fazlaliklari at", "projeyi yoluna sok".
- **German:** "sei ehrlich", "Realitaetscheck", "soll ich das streichen", "hol
  mich auf den Boden".

### Example

> **You:** Reality-check my SaaS landing page redesign. I added an animated 3D
> hero that I love.
>
> **It:** Goal anchored: more SMB trial signups this quarter, no extra eng
> budget. I loaded the staging page in Chrome: the 3D hero adds 2.1s to
> largest-contentful-paint on a mid-tier phone, and your analytics say 62% of
> traffic is mobile. It also pushes the CTA below the fold. Verdict: **CUT**
> (high confidence). The part you love costs you speed and CTA visibility,
> against the one goal that matters, with no evidence it lifts conversion. Lead
> with the value prop and CTA above the fold. If you want motion, **REWORK** to
> a lightweight CSS treatment. **PARK** the 3D idea behind one test: it has to
> beat control on signups to live.

The maker loses the part they loved. The goal wins. That is the whole job.

## What is inside

```
kill-your-darlings/
├── .claude-plugin/
│   └── marketplace.json              # makes the repo an installable marketplace
├── plugins/
│   └── kill-your-darlings/
│       ├── .claude-plugin/plugin.json
│       ├── README.md
│       └── skills/
│           └── kill-your-darlings/
│               ├── SKILL.md          # the process and the rules
│               ├── MEMORY.md         # running-memory format + write locations
│               ├── references/
│               │   ├── playbook.md   # taxonomy, signals, research, rubric
│               │   └── explain.md    # plain-language + HTML explain mode
│               ├── knowledge/
│               │   └── knowledge-base.md   # living data the skill draws on
│               ├── assets/
│               │   └── report-template.html # clean, responsive HTML report
│               ├── evals/
│               │   └── evals.json     # trigger + output test cases (skill-creator)
│               └── examples/
│                   └── saas-landing-reality-check.md  # a worked run
├── scripts/validate.sh               # no-cost local manifest + frontmatter check
├── .githooks/pre-commit              # optional: run the validator on commit
├── CHANGELOG.md
├── CONTRIBUTING.md
├── LICENSE
└── README.md
```

## Fork and extend

This repo is a single-plugin marketplace, built to grow. Fork it, change the
voice, harden the cuts, or add sibling skills (a "scope referee", a "pre-mortem"
runner, a "second opinion" panel) under `plugins/` and list them in
`marketplace.json`. See [CONTRIBUTING.md](CONTRIBUTING.md).

## Marks

The repo ships three marks, all gold-on-dark self-contained SVGs in
[`docs/marks/`](docs/marks). Swap the one in the banner or the report to taste.

![Marks](docs/marks.png?v=3)

- **Tyrannosaurus:** the predator, and the default mark.
- **Mosquito in amber:** the real darling, preserved instead of killed.
- **Theropod track:** what it leaves behind.

## Credit

The advice is old. Arthur Quiller-Couch wrote "murder your darlings" in *On the
Art of Writing* (around 1913 to 1916). Stephen King gave it the phrasing in the
epigraph above in *On Writing* (2000). It is often misattributed to Faulkner,
who did not write it. This skill just points the same blade at projects instead
of prose.

The visual identity nods to *Jurassic Park* (Steven Spielberg, 1993, from
Michael Crichton's novel). In the spirit of the skill: that is not a Stephen King
work, so it is not, strictly, a piece by the quote's owner. It earns its place
anyway, because the film is the perfect cautionary tale for an unkilled darling.
"Your scientists were so preoccupied with whether they could, they didn't stop
to think if they should" is the whole lesson in one line: the most beloved idea,
shipped without a reality check, is the one that eats the park.

The T. rex silhouette is CC0 / public domain (Wikimedia Commons,
*Tyrannosaurus_silhouette.svg*). No attribution is required; it is credited here
anyway, because killing your darlings does not mean killing your sources.

## License

[MIT](LICENSE). Use it, fork it, ship it.
