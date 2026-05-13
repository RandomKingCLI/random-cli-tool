#!/usr/bin/env bash
set -e

TARGET="/usr/local/bin/rand"

echo "Installing 'rand' command to $TARGET..."

cat > "$TARGET" << 'EOF'
#!/usr/bin/env bash
echo $(( (RANDOM % 1000) + 1 ))
EOF

chmod +x "$TARGET"

echo "Done! Run 'rand' to get a random number between 1 and 1000."
