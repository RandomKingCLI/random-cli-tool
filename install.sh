#!/usr/bin/env bash
set -e

TARGET="$HOME/.local/bin/rand"

mkdir -p "$(dirname "$TARGET")"

echo "Installing 'rand' command to $TARGET..."

cat > "$TARGET" << 'EOF'
#!/usr/bin/env bash
echo $(( (RANDOM % 100000) + 1 ))
EOF

chmod +x "$TARGET"

echo "Done! Run 'rand' to get a random number between 1 and 100000."
