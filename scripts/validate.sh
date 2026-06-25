#!/usr/bin/env bash
# Validate manifests and skill frontmatter. No cost, no CI required.
# Run from the repo root:  ./scripts/validate.sh
set -uo pipefail
cd "$(dirname "$0")/.." || exit 1

fail=0

echo "Validating JSON manifests..."
python3 - <<'PY' || fail=1
import json, sys, pathlib
errors = []
def load(p):
    try: return json.loads(pathlib.Path(p).read_text())
    except Exception as e: errors.append(f"{p}: invalid JSON ({e})"); return None
mp = load(".claude-plugin/marketplace.json")
if mp is not None:
    if not mp.get("name"): errors.append("marketplace.json: missing 'name'")
    for i, p in enumerate(mp.get("plugins", [])):
        if not p.get("name"): errors.append(f"marketplace.json plugins[{i}]: missing 'name'")
        if not p.get("source"): errors.append(f"marketplace.json plugins[{i}]: missing 'source'")
for plug in pathlib.Path("plugins").glob("*"):
    m = plug / ".claude-plugin" / "plugin.json"
    if m.exists():
        d = load(str(m))
        if d is not None and not d.get("name"): errors.append(f"{m}: missing 'name'")
if errors:
    print("\n".join(errors)); sys.exit(1)
print("  manifests OK")
PY

echo "Validating skill frontmatter..."
while IFS= read -r skill; do
  head -n 10 "$skill" | grep -q '^name:'        || { echo "  $skill: missing 'name'"; fail=1; }
  head -n 12 "$skill" | grep -q '^description:'  || { echo "  $skill: missing 'description'"; fail=1; }
done < <(find plugins -name SKILL.md)
[ "$fail" -eq 0 ] && echo "  frontmatter OK"

echo "Checking for em dashes (skill copy should have none)..."
if grep -rl '—' --include='*.md' --include='*.json' --include='*.html' . ; then
  echo "  em dash found"; fail=1
else
  echo "  none"
fi

if [ "$fail" -eq 0 ]; then echo "All checks passed."; else echo "Validation failed."; fi
exit $fail
