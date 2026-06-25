# Kill Your Darlings (plugin)

The `kill-your-darlings` plugin adds one skill of the same name to Claude Code.

It is a reality-check partner: it anchors the real goal, reads your actual
materials without assuming, researches the real world (web search and live
Chrome instead of guessing), names the ideas you are too attached to, and
returns an evidence-backed keep / cut / rework / park verdict plus a plan to
get the project back on track.

## Install

From the marketplace repo:

```
/plugin marketplace add ONDERBEY/kill-your-darlings
/plugin install kill-your-darlings@kill-your-darlings
```

See the [repository README](https://github.com/ONDERBEY/kill-your-darlings)
for manual install and full usage.

## What is inside

```
kill-your-darlings/
├── .claude-plugin/
│   └── plugin.json
└── skills/
    └── kill-your-darlings/
        ├── SKILL.md            # core process and rules
        └── references/
            └── playbook.md     # taxonomy, signals, research playbook, rubric
```

## Invoke it

Type `/kill-your-darlings`, or just ask in plain language: "reality check this
plan", "be brutally honest", "should I cut this feature", "talk me out of it".
Triggers also fire in Turkish and German. See the repository README for the
full trigger list.
