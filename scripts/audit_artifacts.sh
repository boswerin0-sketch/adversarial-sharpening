#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "Artifact audit"
echo "=============="
echo
echo "Root: $ROOT_DIR"
echo

count_files() {
  local dir="$1"
  if [[ -d "$ROOT_DIR/$dir" ]]; then
    find "$ROOT_DIR/$dir" -type f | wc -l | tr -d ' '
  else
    echo "0"
  fi
}

print_section() {
  local dir="$1"
  local label="$2"

  echo "$label: $(count_files "$dir")"
  if [[ -d "$ROOT_DIR/$dir" ]]; then
    find "$ROOT_DIR/$dir" -type f | sort | sed "s#^$ROOT_DIR/##"
  else
    echo "missing: $dir/"
  fi
  echo
}

print_section "evals" "Evals"
print_section "protocols" "Protocols"
print_section "cases" "Cases"

echo "AGENTS.md checks"
echo "----------------"

if [[ -f "$ROOT_DIR/AGENTS.md" ]]; then
  if grep -q "Slippery Stone Protocol" "$ROOT_DIR/AGENTS.md"; then
    echo "ok: Slippery Stone Protocol is logged"
  else
    echo "missing: Slippery Stone Protocol"
  fi

  if grep -q "Track dumpsite automation" "$ROOT_DIR/AGENTS.md"; then
    echo "ok: Track dumpsite automation is logged"
  else
    echo "missing: Track dumpsite automation"
  fi
else
  echo "missing: AGENTS.md"
fi

echo
echo "Done."
