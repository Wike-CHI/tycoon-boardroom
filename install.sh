#!/usr/bin/env bash
set -euo pipefail

REPO="Wike-CHI/tycoon-boardroom"
SKILLS_DIR="$HOME/.claude/skills"
TMP_DIR=$(mktemp -d)

cleanup() { rm -rf "$TMP_DIR"; }
trap cleanup EXIT

echo "==> Cloning $REPO ..."
git clone --depth 1 "https://github.com/$REPO.git" "$TMP_DIR/repo" 2>/dev/null

echo "==> Installing skills to $SKILLS_DIR ..."
mkdir -p "$SKILLS_DIR"

for skill_dir in "$TMP_DIR/repo/skills"/*/; do
  skill_name=$(basename "$skill_dir")
  echo "    -> $skill_name"
  rm -rf "$SKILLS_DIR/$skill_name"
  cp -r "$skill_dir" "$SKILLS_DIR/$skill_name"
done

echo ""
echo "✓ Installed skills:"
for skill_dir in "$SKILLS_DIR"/*/; do
  name=$(basename "$skill_dir")
  if [ -f "$skill_dir/SKILL.md" ]; then
    echo "    /$name"
  fi
done

echo ""
echo "Run /tycoon-boardroom in Claude Code to start."
