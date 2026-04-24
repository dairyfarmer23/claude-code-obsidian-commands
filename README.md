# claude-code-obsidian-commands

Five slash commands for Claude Code that turn your Obsidian vault into active agent context.

## The idea

> "99.99% of people won't do this because it requires reflection + setup. But once the vault exists, the agent stops being generic. It starts thinking in your voice."
> — [Greg Isenberg, Apr 2026](https://x.com/gregisenberg/status/2026036464287412412)

Greg's thread is about using Obsidian + Claude Code as a personal operating system. His post mentions five commands by name without defining them:

- `/context` → load your full life + work state
- `/trace` → see how an idea evolved over months
- `/connect` → bridge two domains you've been circling
- `/ideas` → generate startup ideas from your vault
- `/graduate` → promote daily thoughts into real assets

This repo is the concrete implementations. Plus one rename — `/context` collides with Claude Code's built-in, so it ships as **`/vault-context`**.

## Commands

| Command | What it does |
|---|---|
| **`/vault-context`** | Loads CLAUDE.md, North Star, active work, today's daily, recent changes. Run at session start — replaces re-explaining your life every time. |
| **`/trace <topic>`** | Chronological evolution of an idea across the vault. First mention, how thinking shifted, contradictions, decision points. |
| **`/connect <A> <B>`** | Finds explicit + latent connections between two domains/folders/tags/people. Stops if unrelated — no forced analogies. |
| **`/ideas`** | Vault-grounded idea generation. Every idea must cite a vault passage. Ranked: already-half-built → high-signal unbuilt → adjacent. |
| **`/graduate <topic>`** | Promotes a daily-note fragment into a proper note with frontmatter + wikilinks at the right destination. Asks before writing. |

## Install

### Option A — curl (fastest)

```bash
mkdir -p ~/.claude/commands
for cmd in vault-context trace connect ideas graduate; do
  curl -fsSL "https://raw.githubusercontent.com/DAIRYFARMER23/claude-code-obsidian-commands/main/commands/${cmd}.md" \
    -o "~/.claude/commands/${cmd}.md"
done
```

### Option B — clone + install

```bash
git clone https://github.com/DAIRYFARMER23/claude-code-obsidian-commands.git
cd claude-code-obsidian-commands
./install.sh
```

### Option C — global plugin (if Claude Code supports the marketplace flow on your setup)

Not packaged as a plugin yet — the curl/clone path is canonical for v1.

## Vault structure assumed

The commands reference a folder layout roughly matching [kepano's obsidian-skills](https://github.com/kepano/obsidian-skills) template:

```
vault-root/
├── CLAUDE.md           ← vault-specific agent instructions
├── Home.md             ← entry-point dashboard
├── YYYY-MM-DD.md       ← daily notes at root
├── brain/
│   ├── North Star.md   ← current focus (read at session start)
│   ├── Patterns.md     ← named recurring observations
│   ├── Key Decisions.md
│   ├── Gotchas.md
│   └── Skills.md
├── thinking/           ← scratchpad for drafts + half-formed ideas
├── work/
│   ├── active/         ← current projects
│   └── incidents/
├── org/people/         ← atomic person notes
└── perf/               ← performance / evidence
```

If your vault differs, the commands still work — just edit the paths in each file to match your setup. Each command is ~50 lines of plain markdown; open it in any editor.

## Requirements

- **Claude Code** — the commands are agent prompts, Claude Code runs them
- **Obsidian MCP** (recommended) — so Claude can read/write your vault directly. [MarkusPfundstein's mcp-obsidian](https://github.com/MarkusPfundstein/mcp-obsidian) via the Local REST API plugin works well
- **qmd** (optional but recommended) — [semantic search over markdown](https://github.com/tobi/qmd). The `trace`, `connect`, and `ideas` commands use it if available, fall back to grep otherwise

## Design principles

These commands are deliberately opinionated:

- **Vault-grounded only.** If a claim can't cite a vault path, it gets cut. No hallucinated history, no generic ideas.
- **Ask before writing.** `/graduate` proposes the destination and drafts the note, then waits for confirmation before creating files.
- **No cheerleading.** Analytical voice, honest assessment. "This is genius!" adds zero value.
- **Scope narrowly.** Each command reads specific paths — none do full-vault scans. Fast and predictable.
- **Kill criteria.** Most commands specify when to stop or skip (e.g. `/trace` says "if only one mention, don't fabricate an arc").

Aligned with Andrej Karpathy's [observations on LLM coding pitfalls](https://x.com/karpathy/status/2015883857489522876) — particularly the "don't silently pick an interpretation" rule. See [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills) for the global `CLAUDE.md` version of those principles.

## Customize

Each command is a plain markdown file with YAML front matter. Edit freely:

- **Scope** — which folders to read / ignore
- **Output format** — table vs bullets, length caps, required sections
- **Voice** — more/less analytical, more/less direct
- **Constraints** — hard rules specific to your workflow
- **Ask/act balance** — how often to confirm before writing

Fork the repo, tune to your life, PR back anything generalizable.

## Credits

- **Greg Isenberg** — [the thread](https://x.com/gregisenberg/status/2026036464287412412) that named the five commands
- **Andrej Karpathy** — the coding pitfalls / principles these reflect
- **Steph Ango (kepano)** — [obsidian-skills](https://github.com/kepano/obsidian-skills) vault template these commands assume

## License

MIT.
