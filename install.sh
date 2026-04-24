#!/usr/bin/env bash
# Install all commands into ~/.claude/commands/
# Idempotent — re-run to update.

set -euo pipefail

DEST="${CLAUDE_COMMANDS_DIR:-$HOME/.claude/commands}"
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/commands"

if [[ ! -d "$SRC" ]]; then
  echo "Error: commands/ not found at $SRC" >&2
  exit 1
fi

mkdir -p "$DEST"

installed=0
for f in "$SRC"/*.md; do
  name=$(basename "$f")
  # Warn on collision with built-in /context — we ship /vault-context instead,
  # but double-check in case someone renames locally
  if [[ "$name" == "context.md" ]]; then
    echo "Skipping context.md — conflicts with Claude Code built-in. Use vault-context.md." >&2
    continue
  fi
  cp "$f" "$DEST/$name"
  echo "  installed: $name"
  installed=$((installed + 1))
done

echo ""
echo "Installed $installed command(s) to $DEST"
echo "Restart your Claude Code session to activate."
