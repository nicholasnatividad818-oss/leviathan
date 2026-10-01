#!/usr/bin/env bash
set -euo pipefail
echo "Leviathan boot"
command -v ollama >/dev/null 2>&1 || { echo "Install Ollama first: https://ollama.com"; exit 1; }
MODEL="${LEVIATHAN_MODEL:-qwen3.6}"
echo "Pulling $MODEL ..."
ollama pull "$MODEL" || echo "Pull failed — pick a smaller tag (qwen3.5:9b) and retry."
echo "Default mode: $(cat "$(dirname "$0")/../modes/ACTIVE")"
echo "Next: openclaw onboard --install-daemon"
echo "Then copy config/openclaw.example.json5 to ~/.openclaw/openclaw.json"
