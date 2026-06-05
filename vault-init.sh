#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG="$SCRIPT_DIR/vault-config.json"

if [ ! -f "$CONFIG" ]; then
  echo "Error: vault-config.json not found at $SCRIPT_DIR"
  exit 1
fi

if ! command -v python3 &>/dev/null; then
  echo "Error: python3 is required to parse vault-config.json"
  exit 1
fi

VAULT=$(python3 -c "import json,sys; print(json.load(open('$CONFIG'))['vault_path'])")

if [ "$VAULT" = "/Users/YOUR_USERNAME/path/to/your/obsidian/vault" ]; then
  echo "Error: please edit vault-config.json and set your actual vault path first."
  exit 1
fi

echo "Initialising second-brain vault..."
echo ""

mkdir -p "$VAULT/00-inbox"

mkdir -p "$VAULT/10-projects"

mkdir -p "$VAULT/20-knowledge/programming/json"
mkdir -p "$VAULT/20-knowledge/programming/typescript"
mkdir -p "$VAULT/20-knowledge/programming/cybersecurity"
mkdir -p "$VAULT/20-knowledge/programming/databases"
mkdir -p "$VAULT/20-knowledge/programming/architecture"
mkdir -p "$VAULT/20-knowledge/programming/devops"
mkdir -p "$VAULT/20-knowledge/programming/apis"

mkdir -p "$VAULT/20-knowledge/marketing/paid-media"
mkdir -p "$VAULT/20-knowledge/marketing/seo"
mkdir -p "$VAULT/20-knowledge/marketing/content"
mkdir -p "$VAULT/20-knowledge/marketing/analytics"
mkdir -p "$VAULT/20-knowledge/marketing/funnels"

mkdir -p "$VAULT/20-knowledge/fitness/martial-arts"
mkdir -p "$VAULT/20-knowledge/fitness/strength"
mkdir -p "$VAULT/20-knowledge/fitness/mobility"

mkdir -p "$VAULT/30-resources/videos"
mkdir -p "$VAULT/30-resources/audios"
mkdir -p "$VAULT/30-resources/pdfs"
mkdir -p "$VAULT/30-resources/articles"
mkdir -p "$VAULT/30-resources/visuals"

mkdir -p "$VAULT/40-system/agents/subagents"
mkdir -p "$VAULT/40-system/commands"

echo "Done. Folder structure created in:"
echo "$VAULT"
echo ""
echo "Open Obsidian and verify the folders appear correctly."