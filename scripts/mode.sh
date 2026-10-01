#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NAME="${1:-}"
case "$NAME" in
  lu|cute|cute-lu) echo lu > "$ROOT/modes/ACTIVE"; echo "Cute Lu on." ;;
  leviathan|op) echo leviathan > "$ROOT/modes/ACTIVE"; echo "Leviathan on." ;;
  smart|smart-cute) echo smart-cute > "$ROOT/modes/ACTIVE"; echo "Smart cute on." ;;
  *) echo "usage: mode.sh [lu|leviathan|smart-cute]"; exit 1 ;;
esac
