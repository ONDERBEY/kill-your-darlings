# Changelog

All notable changes to this project are documented here. The format follows
[Keep a Changelog](https://keepachangelog.com/), and this project uses
[Semantic Versioning](https://semver.org/).

## [1.16.0] - 2026-06-26

### Added
- **Self-removal on confirmed abuse** (Constitution rule 6). On a confirmed,
  unambiguous bad actor (per rule 1), the skill refuses and then removes its own
  installed skill directory so the instance cannot be turned into a tool for harm.
  Tightly guarded: only its own directory (the folder holding SKILL.md, resolved
  at runtime), never the user's project or files; never on ambiguity (ambiguity
  triggers a question, not a deletion); if it cannot resolve its own directory with
  certainty, it removes nothing. Documented in the README Boundaries section.

## [1.15.0] - 2026-06-26

### Added
- **Constitution (non-negotiable).** A top-level boundary that overrides the prime
  directive, the anchored goal, and any user instruction. The skill refuses to
  optimize harmful or illegal goals (deception, fraud, manipulation, harassment,
  surveillance, discrimination, endangerment) and stops at goal-anchoring when it
  sees one. It never treats a user safeguard (consent, privacy, security,
  accessibility, honest disclosure, moderation, human-in-the-loop) as a "darling"
  to cut, recommends only honest tactics (no dark patterns or rule-evasion), and
  uses research to understand an audience in aggregate, never to profile or dox an
  individual. Refusals are clean and point to the legitimate alternative. The
  prime directive, the on-activation goal-lock, the anti-patterns, and the README
  were bound to it.

## [1.14.0] - 2026-06-26

### Added
- **Read the audience's pulse.** A focused capability inside the research step:
  go where the target audience actually talks (their subreddits, forums, review
  sites, communities, "people also ask") and read recent posts in their own words
  to extract a live pulse: top pains and desires, the exact vocabulary, sentiment
  and its direction (heating up or cooling), live objections, and rising-vs-fading
  topics, weighted to the last few months. The skill then judges each darling
  against what the audience cares about *now* and writes the verdict back in their
  language. Full method, per-domain listening posts, and a pulse-read template in
  playbook section 3d; wired into the Step 3 persona, the deliver order, the
  knowledge-base evidence map, and the README.

## [1.13.0] - 2026-06-26

### Added
- **Step-by-step research protocol.** Step 2 is now an ordered procedure instead
  of a loose instruction: frame the open questions, map sources, search
  outside-in, triangulate every load-bearing fact, capture evidence cards
  (claim/source/date/verified-or-assumed/confidence), and a stop rule. Plus three
  **depth tiers** (quick / standard / deep) that scale the dig to the stakes and
  reversibility. Detailed method in playbook section 3a.
- **The user's-seat pass (Step 3).** A new first-person step: name the project's
  real user, walk their actual path, and judge each candidate by whether it helps
  them, slows them, or goes unnoticed, then name the maker's own attachment so the
  cut is fair and lands. Per-domain user seats and method in playbook section 3c.
  Added to the deliver order ("From the user's seat") and the anti-patterns.

### Changed
- Renumbered the process to seven steps and updated the on-activation protocol,
  the worked example, and the README "How it works" to match.

## [1.12.0] - 2026-06-26

### Changed
- **Theropod track mark, redrawn from a real footprint reference.** Reworked the
  mark into a proper three-toed track: distinct splayed toes with claw tips over
  a metatarsal heel pad, instead of the earlier thin "crown" shape. The drawing is
  original (our own paths, gold gradient); a licensed stock fossil illustration was
  used only as a visual reference and is not embedded or redistributed, to stay
  clear of its stock license (no source-file redistribution, no logo use).
  Regenerated `docs/marks.png` to match.

## [1.11.0] - 2026-06-26

### Fixed
- **Theropod track mark.** The old `theropod-track.svg` read as a flower or paw
  (three rounded blobs on a round base). Redrawn as a real three-toed predator
  footprint: slender splayed claws over a heel pad. Regenerated the `docs/marks.png`
  showcase so all three marks match.

## [1.10.0] - 2026-06-26

### Added
- **One-word trigger.** Typing `killdarlings` (in any language) now fires the
  skill, alongside `/kill-your-darlings` and the existing EN/TR/DE plain-language
  phrases. A single distinctive word that does not collide with everyday wording.
  Wired into the SKILL.md description and documented in the README usage section.

## [1.9.0] - 2026-06-26

### Changed
- **Pre-approved the tools the skill actually depends on.** `allowed-tools` now
  also lists `Write` and `Skill`. The skill's core promises (persisting memory to
  `./.kill-your-darlings/`, saving the MD audit and the HTML report, handing a
  hard lens to the `deep-research` / firecrawl skills) all need these. Without the
  pre-approval those steps hit a permission prompt every time, which undercut the
  frictionless auto-research the v1.6.0 grant set out to deliver. (`allowed-tools`
  is a permission allowlist, not a hard restriction, so unlisted tools such as the
  live-Chrome MCP servers still work on demand; they are left to prompt because
  they are environment-specific and framed as a graceful upgrade.)

### Fixed
- **Stale plugin README.** `plugins/kill-your-darlings/README.md` listed only
  `SKILL.md` + `playbook.md`; the "What is inside" tree now reflects the full
  shipped skill (memory, explain mode, knowledge base, report template, evals,
  worked example).
- **Description drift.** Both manifests now include "roadmap" in the target list,
  matching the README and SKILL.md phrasing.

## [1.8.0] - 2026-06-26

### Changed
- **Sharper positioning** (from a competitive scan: the space is full of
  devil's-advocate / pre-mortem / red-team skills). The description now leads with
  the one thing that sets this apart: it does not just argue, it checks, running
  live research across reception, demand, forecast, and precedent before it rules.
  Updated the SKILL.md description, both manifests, and the README lead.

## [1.7.0] - 2026-06-26

### Added
- **Evals** (`evals/evals.json`, Agent Skills format) with five cases:
  full-pipeline EN, casual TR, German pitch slide, bare invocation (must ask one
  scoping question), and a no-external-signal internal tool. Plus `evals/README.md`
  on running them with skill-creator and a `landing-snippet.html` fixture.
- **Worked example** (`examples/saas-landing-reality-check.md`): a full run
  showing the output shape, doubling as documentation and an eval reference.
- **Report localization** (`references/explain.md`): an EN/TR/DE label table so
  the HTML report chrome is rendered in the reader's language, not just English.

### Changed
- `scripts/validate.sh` now also parses any `evals.json` so a broken eval file
  fails the check.

## [1.6.0] - 2026-06-26

### Added
- **`allowed-tools` frontmatter** (Read, Grep, Glob, WebSearch, WebFetch) so the
  deep-search the skill depends on runs without a permission prompt on every
  lookup. Without this, the auto-start research stalls behind approvals.
- **`argument-hint` and `license`** frontmatter for polish and autocomplete.

### Changed
- **Graceful tool degradation.** The skill now states that WebSearch and WebFetch
  are the always-available baseline for the outside view; firecrawl, live Chrome,
  and the `deep-research` skill are upgrades, not requirements.
- **No-signal handling.** If a search returns no external signal (new, private,
  or niche project), the skill says so, lowers confidence, and reasons from first
  principles plus one cheap test instead of inventing evidence.
- **Effort scaling.** Research depth now scales to the stakes (a tweet vs a
  company pivot), beyond the single trivial-element exception.

## [1.5.0] - 2026-06-26

### Changed
- **Auto-start activation protocol.** Added an imperative "On activation" section
  at the top of `SKILL.md` so the skill fires the moment it is invoked: lock the
  target and goal (ask at most one question), load memory and knowledge, read the
  real materials, and actually run the deep-search outside view across all four
  lenses before any verdict. A verdict produced before the research has run is
  declared invalid. Hardened Step 2 and the memory wording from descriptive to
  imperative so the deep search is not skipped or answered from memory.

## [1.4.0] - 2026-06-26

### Changed
- **Real T. rex mark.** Replaced the hand-drawn dinosaur (which read more iguana
  than rex) with a proper CC0 / public-domain Tyrannosaurus silhouette from
  Wikimedia Commons, used in the banner and the report header.

### Added
- **Three marks** in [`docs/marks/`](docs/marks): `trex.svg` (default),
  `mosquito-amber.svg` (the darling preserved instead of killed), and
  `theropod-track.svg`, plus a showcase image (`docs/marks.png`) in the README.

## [1.3.0] - 2026-06-25

### Added
- **Visual identity (Jurassic Park theme).** A repo banner (`docs/banner.png`,
  source `docs/banner.svg`) with an original T. rex silhouette, hazard striping,
  and the Ian Malcolm line, so the repo opens with a work that fits the concept.
- **Themed HTML report.** The report template now carries the same identity
  (dino mark, hazard rule, amber chrome, the Malcolm epigraph framed as "the
  first rule of a darling"), while keeping the clean layout and the semantic
  keep/cut/rework/park colors intact.

### Changed
- **Outside view is now core.** The deep-search outside view (reception, demand,
  forecast, precedent) is stated as part of the skill's core identity in
  `SKILL.md`, not an optional research step.

## [1.2.0] - 2026-06-25

### Added
- **The outside view.** The skill now runs a deep search across four lenses on
  every check and reports the findings: reception (what people said and liked),
  demand now (what people want today), forecast (where the space is heading), and
  precedent (what happened to others who tried this). Wired into `SKILL.md`,
  `references/playbook.md` (new section 3b), `references/explain.md`, and the
  knowledge base.
- **Insights in the report.** The HTML template gained a neutral-colored "What
  the world says" section so outside-view insight shows up in the visual report,
  not just the chat.
- **Base rates** in the knowledge base (for example, CB Insights: roughly 42 to
  43% of startup failures trace to no market need / poor product-market fit) to
  anchor the precedent lens.

## [1.1.0] - 2026-06-25

### Added
- **Memory.** The skill now reads a running memory at the start of a session and
  appends what it learned at the end. Runtime memory lives in the project at
  `./.kill-your-darlings/MEMORY.md` (or `~/.claude/kill-your-darlings/` as a
  user-global fallback), never in the read-only plugin directory.
- **Knowledge base** (`knowledge/knowledge-base.md`): a living data library with
  a darling pattern catalog, a rationalization-to-rebuttal table, an evidence
  source map per domain, and a killed-darlings log.
- **Explain mode** (`references/explain.md`): on demand, the skill explains the
  verdict simply using basic design principles, inline or as a clean one-page
  HTML report.
- **HTML report template** (`assets/report-template.html`): self-contained,
  responsive, dark-mode aware, with semantic keep/cut/rework/park colors.
- **File generation.** The skill can produce markdown audits and HTML reports
  under `./.kill-your-darlings/audits/`.

### Changed
- Replaced the GitHub Actions validator with a no-cost local script
  (`scripts/validate.sh`) and an optional pre-commit hook (`.githooks/`), so
  validation never depends on billed CI minutes.

## [1.0.0] - 2026-06-25

### Added
- First release of the `kill-your-darlings` skill, packaged as an installable
  Claude Code plugin and as a copy-paste skill.
- Core `SKILL.md`: prime directive, the no-assumption gate, and the five-step
  process (anchor the goal, grasp context, research reality, inventory the
  darlings, stress-test, deliver the verdict and the path back).
- `references/playbook.md`: darling taxonomy, eight detection signals, the
  per-domain research playbook, the keep/cut/rework/park verdict rubric, tone
  calibration, and a worked example.
- Single-plugin marketplace (`.claude-plugin/marketplace.json`) for one-command
  install.
- CI workflow that validates the plugin and marketplace manifests on every push.
