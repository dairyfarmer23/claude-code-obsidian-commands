---
description: "Generate startup/product/content ideas grounded in the vault — patterns you've been circling, problems you've hit repeatedly, trends you've tracked. Not generic ideation."
---

Mine the vault for signal and propose ideas. The constraint: every idea must be grounded in something already written, not imagination. If the vault doesn't support it, don't propose it.

**Usage:**
- `/ideas` — general sweep across the vault
- `/ideas <domain>` — scoped (e.g. `developer tools`, `content`, `automation`)

## Workflow

### 1. Pull vault signals

Read:
- `brain/Patterns.md` — recurring observations already named
- `brain/North Star.md` — current focus
- `thinking/` — raw thought documents
- Recent daily notes (past 14 days) — grep for phrases like "i hate", "this sucks", "wish", "why is", "should be", "would be cool"
- Any "Trends/", "Research/", or similar tracking folders you keep
- Operational docs that describe pain you've already solved — solutions that could be products

### 2. Categorize the signals

Bucket what you find into:
- **Problems you hit repeatedly** — friction in your own workflow (highest leverage, you're the user)
- **Patterns across the field / industry** — from research notes
- **Tools/integrations built for yourself** — already productized in spirit
- **Ideas explicitly tagged or noted** — anything in `thinking/` or daily notes prefixed with "idea:"

### 3. Generate

Produce 5-8 ideas. For each:

- **Name:** 2-4 words, specific
- **One-line pitch:** who, does what, for whom
- **The signal:** quote or cite the vault passage that grounds this — path + brief excerpt
- **Why it's not already done:** honest take (is it hard? niche? boring to build?)
- **Smallest test:** what would a 2-week MVP look like
- **Fit for you specifically:** is this yours to build, or better handed off?

### 4. Rank

Present in this order:
1. **Already half-built** — ideas where vault evidence shows partial progress
2. **High-signal, unbuilt** — strong vault grounding, nothing shipped yet
3. **Adjacent** — ideas at the edge of your expertise/audience

Skip anything generic. "AI-powered X for creators" without specific vault grounding is noise.

### 5. End

Ask: "Any of these worth capturing in `thinking/`? I can draft a full brief for one."

## Important

- **Vault-grounded only.** If an idea has no citation, cut it.
- **Your voice.** If the vault has a voice/style guide (`brain/Voice.md`, `templates/voice.md`, etc.), calibrate audience-facing ideas against it.
- **No cheerleading.** "This is genius!" adds nothing. Honest assessment only.
- **Flag overlap.** If two ideas are actually the same insight wearing different hats, merge them.
- **Be specific about yours vs outsourceable.** Your time is the scarcest resource.
