---
description: "Promote a daily-note fragment or transient thought into a real vault asset. Finds the right home, adds frontmatter + wikilinks, proposes before writing."
---

Daily notes are where thoughts go to die unless something promotes them. This command picks up a fragment (a line, a paragraph, a topic in today's daily) and turns it into a proper note — with a correct destination, frontmatter, wikilinks to existing content, and a tag.

**Usage:**
- `/graduate <topic>` — topic mentioned in recent daily notes
- `/graduate <path:line>` — specific line from a specific daily note
- `/graduate` — ask which fragment from today to promote

## Workflow

### 1. Locate the fragment

- If given a topic: search recent daily notes (past 30 days) for the topic
- If given `path:line`: read those lines + surrounding context
- If no argument: read today's daily note, list the notable fragments (new thoughts, decisions, ideas, problems) as a numbered list, ask the user to pick one

### 2. Pick the destination

Based on the fragment's type (example destinations — adapt to your vault):

- **A named pattern or reusable observation** → `brain/Patterns.md` (append) or new `brain/<Name>.md` if big enough
- **A finalized decision** → `brain/Key Decisions.md` (append)
- **A trap to remember** → `brain/Gotchas.md` (append)
- **A skill demonstrated** → `brain/Skills.md` or `perf/evidence/<YYYY-MM-DD-name>.md`
- **A raw idea to develop** → `thinking/<YYYY-MM-DD-name>.md`
- **A new work item** → `work/active/<name>.md`
- **An incident retro** → `work/incidents/<YYYY-MM-DD-name>.md`
- **A reusable technique** → wiki or reference folder
- **Info about a person** → append to `org/people/<name>.md`

If the fragment spans types, propose the primary destination and note the overlap.

### 3. Draft the note

Always include:
- YAML frontmatter with `created: YYYY-MM-DD`, `source: [[YYYY-MM-DD]]` (link back to the daily note it came from), `tags:` (2-4, specific)
- Expanded version of the fragment — not a copy, a properly framed version
- Wikilinks to related existing notes (scan via qmd / obsidian MCP before writing)
- "See also" section at bottom if 2+ related notes exist

Keep the note compact. Graduation is about proper framing, not padding.

### 4. Present, don't commit

Show:
- **Fragment:** the original text + source
- **Destination:** the chosen path + one-line reason
- **Proposed content:** full draft
- **Alternatives:** 1-2 other paths considered and rejected, briefly

Ask: "Write it?" — wait for explicit yes before creating the file.

### 5. After writing (if confirmed)

- Create the file via obsidian MCP (or filesystem)
- Add a breadcrumb in the original daily note: append ` → [[path/to/new-note]]` after the original fragment
- Report: path written + wikilinks added

## Important

- **One fragment at a time.** If the user wants multiple, run the command multiple times. Batching causes weak framing.
- **Don't touch the daily note text** except the breadcrumb append.
- **Wikilinks must point at notes that exist.** Verify before writing.
- **Match the user's voice** if a voice / style guide exists in the vault.
- **If the fragment is too thin to graduate,** say so. Don't pad it.
