#!/usr/bin/env bash
# Regression tests for InteractiveAdvertisingBureau/vast#58.
# Empty InLine/Wrapper and repeated AdSystem must fail against this tree's
# vast_4.4.xsd. They still validate against origin/master, which is the bug.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
DIR="$(cd "$(dirname "$0")" && pwd)"
XSD="$ROOT/vast_4.4.xsd"
XMLLINT="${XMLLINT:-xmllint}"

if ! command -v "$XMLLINT" >/dev/null 2>&1; then
  echo "xmllint not found. Install libxml2-utils." >&2
  exit 1
fi

expect_invalid() {
  local file="$1"
  if "$XMLLINT" --noout --schema "$XSD" "$file" >/dev/null 2>&1; then
    echo "FAIL: expected invalid: $(basename "$file")" >&2
    exit 1
  fi
  echo "ok reject $(basename "$file")"
}

expect_valid() {
  local file="$1"
  if ! "$XMLLINT" --noout --schema "$XSD" "$file" >/dev/null 2>&1; then
    echo "FAIL: expected valid: $(basename "$file")" >&2
    "$XMLLINT" --noout --schema "$XSD" "$file" || true
    exit 1
  fi
  echo "ok accept $(basename "$file")"
}

expect_invalid "$DIR/reject-empty-inline.xml"
expect_invalid "$DIR/reject-empty-wrapper.xml"
expect_invalid "$DIR/reject-repeated-adsystem.xml"
expect_valid "$DIR/accept-minimal-inline.xml"
expect_valid "$DIR/accept-minimal-wrapper.xml"
expect_valid "$DIR/accept-nonlinear-pause.xml"

if git -C "$ROOT" rev-parse --verify origin/master >/dev/null 2>&1; then
  master_xsd="$(mktemp)"
  trap 'rm -f "$master_xsd"' EXIT
  git -C "$ROOT" show origin/master:vast_4.4.xsd > "$master_xsd"
  for file in "$DIR"/reject-empty-inline.xml "$DIR"/reject-empty-wrapper.xml "$DIR"/reject-repeated-adsystem.xml; do
    if ! "$XMLLINT" --noout --schema "$master_xsd" "$file" >/dev/null 2>&1; then
      echo "FAIL: $(basename "$file") should still validate against origin/master vast_4.4.xsd (the #58 bug)." >&2
      exit 1
    fi
    echo "ok master still accepts $(basename "$file")"
  done
fi

echo "vast 4.4 InLine/Wrapper cardinality tests passed."
