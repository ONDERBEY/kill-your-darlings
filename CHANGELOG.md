# Changelog

All notable changes to this project are documented here. The format follows
[Keep a Changelog](https://keepachangelog.com/), and this project uses
[Semantic Versioning](https://semver.org/).

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
