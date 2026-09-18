#!/bin/bash
set -e

echo "=== YC Paxel Zero-Load Cloud Runner ==="

# 1. Ensure target directory exists
mkdir -p ~/.cursor/projects

# 2. Extract transcripts bundle if present in current directory
if [ -f "cursor_transcripts_bundle.zip" ]; then
    echo "Unpacking Cursor transcripts (933 KB)..."
    unzip -o -q cursor_transcripts_bundle.zip -d ~/.cursor/
fi

# 3. Run Paxel
echo "Running official YC Paxel script..."
curl -fsSL https://paxel.ycombinator.com/upload.sh | bash
