# Leviathan

Personal OP assistant stack. A local brain, a cloud fallback, markdown memory that does not melt, and two faces:

- **Leviathan** — sharp, brief, ships work
- **Cute Lu** — same brain, soft voice, little sparkles, still gets the job done

This repo is the *vessel*. You fill it with Ollama + OpenClaw (or any MCP client). No API keys live here.

## 90-minute boot

```bash
# 1. Local model
ollama pull qwen3.6          # 24GB GPU / strong Mac
# or: ollama pull qwen3.6:35b-a3b   # 32GB RAM MoE

# 2. Agent harness
curl -fsSL https://openclaw.ai/install.sh | bash
openclaw onboard --install-daemon

# 3. Point OpenClaw at this workspace
# copy config/openclaw.example.json5 → ~/.openclaw/openclaw.json
# set workspace to this clone

bash scripts/install.sh
```

Switch modes in chat:

- `mode lu` — Cute Lu
- `mode leviathan` — OP default
- `mode smart cute` — Lu voice, Leviathan standards

## Layout

```
persona/          who Lu / Leviathan is
modes/            voice packs
memory/           durable facts only (you edit)
config/           OpenClaw + Ollama examples
scripts/          install helpers
AGENTS.md         instructions for any coding agent in this repo
```

## Rules

- Never invent ISRCs, payout numbers, or env keys.
- Do not commit `.env`.
- Local Ollama uses `http://127.0.0.1:11434` **without** `/v1` for OpenClaw tool calls.
- Set `num_ctx` to at least `65536`.
- Add MCP tools one at a time. GitHub first.

## Linked work

- Music store: `nicholasnatividad818-oss/Sistrum-Music-platform`
- Catalog: `nicholasnatividad818-oss/nrn-catalog`
