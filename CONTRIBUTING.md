# Contributing

Thanks for wanting to make this sharper. The bar is simple: a contribution
should make the skill better at serving the goal and worse at flattering the
maker.

## Ways to contribute

- **Sharpen the skill.** Improve `SKILL.md` or `playbook.md`: better darling
  detection signals, a clearer verdict rubric, a new per-domain research
  playbook (mobile, data, hardware, fundraising, and so on).
- **Add a sibling skill.** This repo is a marketplace built to grow. Add a new
  plugin under `plugins/` and list it in `.claude-plugin/marketplace.json`.
- **Fix the docs.** Wrong command, broken link, unclear example.

## Add a new plugin

1. Create `plugins/<your-plugin>/.claude-plugin/plugin.json` with at least a
   `name`.
2. Put skills under `plugins/<your-plugin>/skills/<skill-name>/SKILL.md`.
3. Add an entry to the `plugins` array in `.claude-plugin/marketplace.json` with
   `name`, `source` (`"./plugins/<your-plugin>"`), and a `description`.

## Skill writing rules

- Folder name and `name:` are kebab-case and must match.
- `SKILL.md` frontmatter needs `name` and a `description` that says what it does
  AND when to trigger it. Trigger phrases drive discovery, so be specific.
- Keep `SKILL.md` focused on the process. Put deep reference material in
  `references/`.
- No em dashes in skill copy. Use commas, colons, periods, or pipes.

## Before you open a PR

Run the validator. It checks that every JSON manifest parses, every `SKILL.md`
has `name` and `description`, and no em dashes slipped into skill copy:

```
./scripts/validate.sh
```

A green run is the merge bar. To run it automatically before each commit, enable
the bundled hook once:

```
git config core.hooksPath .githooks
```

## Test it locally

```
/plugin marketplace add ./kill-your-darlings
/plugin install <your-plugin>@kill-your-darlings
```

Then exercise the skill on a real project and confirm the verdicts are grounded
in evidence, not opinion. If it flatters, it is broken.
