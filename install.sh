#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="/usr/local/bin"
TARGET="$INSTALL_DIR/rand"

echo "Installing 'rand' command to $TARGET..."

cp "$SCRIPT_DIR/rand.sh" "$TARGET"
chmod +x "$TARGET"

echo "Done! Run 'rand' to get a random number between 1 and 1000."
