---
description: "Trace how an idea evolved across the vault over time. Chronological view of every time a topic was mentioned, what changed, what stuck."
---

Take a topic and show its evolution through the vault — first mention, how thinking shifted, what got decided, what's current. For when you want to see what past-you actually thought about something, not just what you remember.

**Usage:** `/trace <topic>`

If no topic is given, ask for one — don't guess.

## Workflow

### 1. Gather mentions

Use qmd semantic search (or grep if qmd isn't installed):
- Lex search for the exact term
- Vec search for semantic variants
- Merge results, dedupe by path

Also run `grep -r` through the vault for the exact phrase in case semantic search misses anything.

### 2. Order chronologically

For each mention:
- Extract the file's modification date (frontmatter `created` or `date` if present, else filesystem mtime)
- If the file is a daily note (`YYYY-MM-DD.md`), that IS the date
- If the mention is deep in a long-lived file, extract the surrounding paragraph and note the file

Sort oldest → newest.

### 3. Read the context

For each mention, read enough of the surrounding text to understand what was being said. Don't just show the line — show the thought.

### 4. Summarize the arc

Present as:

- **First mention (date):** the original context — where it started
- **Evolution:** 3-6 bullet points showing how the thinking changed over time (dates on each bullet)
- **Current state:** what the most recent mention says
- **Contradictions:** if earlier mentions disagree with later ones, surface it
- **Decision points:** if `brain/Key Decisions.md` mentions the topic, pull that

End with: "Want me to graduate any of this into a reference doc in `brain/` or another stable location?"

## Important

- If there's only one mention, say so — don't fabricate an arc.
- Don't editorialize. Show what was written; let the evolution speak.
- If the topic crosses work + personal, note which vault areas it lives in.
- Keep quotes short — 1-2 lines each, not whole paragraphs.
