---
description: "Load full life + work state into the current session — CLAUDE.md, reference docs, today's daily note, North Star, active work, recent vault changes. Run at session start."
---

Load your full context so the agent can think with your current state, not a blank slate. Bias toward recency and active work. Keep the synthesis tight — this is a briefing, not a dump.

## Workflow

### 1. Global context

Read in this order:
- `~/.claude/CLAUDE.md` (global guidelines)
- Vault root `CLAUDE.md` (vault-specific)
- Vault root `Home.md`
- Any vault-root reference / memory file (e.g. `Claude Memory.md`, `Overview.md`)

### 2. Current focus

- `brain/North Star.md` — what matters right now
- `brain/Key Decisions.md` — what's already decided (don't re-litigate)
- `brain/Gotchas.md` — known traps

### 3. Active work

- List everything in `work/active/`
- List anything in `work/incidents/` modified in the past 7 days
- Today's daily note at vault root (`YYYY-MM-DD.md` for today's date)
- If today's note doesn't exist, read the most recent 3 daily notes

### 4. Velocity signals

Via qmd or obsidian MCP:
- Most-recently modified 10 notes across the vault
- Any note with `status: active` or `status: in-progress` in frontmatter

### 5. Present the briefing

Structure as:

- **North Star (right now):** 1-2 sentences
- **Active work:** bulleted list, one line each
- **Recent decisions:** what was settled recently
- **Gotchas to remember:** bulleted
- **Open threads:** things mentioned in daily notes but not captured as active work
- **This session's likely direction:** one sentence — a guess at what the user is here to do, based on recency

End with: "Ready. What are we working on?"

## Important

- Do NOT read every file in the vault. Scope to the paths listed.
- Keep the briefing under 25 lines total — skim-friendly.
- If a referenced file doesn't exist, silently skip (don't announce each absence).
- No cheerleading. Analytical voice only.
