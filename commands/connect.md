---
description: "Bridge two domains in the vault. Find the overlap between things you've been thinking about separately but may be related."
---

Take two topics, folders, tags, or people and find where they meet. The goal is surfacing connections you haven't made explicit — this is pattern-recognition across silos, not search.

**Usage:** `/connect <A> <B>`

Examples:
- `/connect work/incidents perf/competencies` — which competencies are the incidents actually demonstrating?
- `/connect brain/Patterns org/people` — which people keep showing up in the patterns you've documented?
- `/connect <project-A> <project-B>` — are two projects solving the same underlying problem?
- `/connect <topic> <tag>` — is this topic actually an instance of a tagged theme you've been tracking?

## Workflow

### 1. Scope each side

For each of A and B:
- If it looks like a path (contains `/` or matches a folder), read files in that path
- If it looks like a tag (starts with `#` or matches a frontmatter tag), collect notes with that tag
- If it looks like a person (name in `org/people/`), collect notes mentioning them
- Otherwise, do a qmd semantic search to find the most relevant notes

### 2. Find explicit connections

Check for:
- Files that already link between the two domains (wikilinks or backlinks)
- Shared tags in frontmatter
- Shared people, tools, or proper nouns mentioned in both

### 3. Find latent connections

Ask (and answer):
- What concept appears in both sides but with different vocabulary?
- What problem in A maps to a solution in B (or vice versa)?
- What pattern from `brain/Patterns.md` applies to both?
- What decision in one area has unstated implications for the other?
- Is there a person who sits at the intersection?

### 4. Present

Structure as:

- **A is about:** one sentence
- **B is about:** one sentence
- **Explicit overlap:** existing links, shared tags, shared mentions (bullets)
- **Latent overlap (3-5 items):** concrete, non-obvious connections, each with:
  - The bridge in one sentence
  - A source citation from each side (path or line)
  - Why it matters (one line)
- **One question worth asking:** the single best prompt to sit with

End with: "Want me to draft a new note in `brain/` or `thinking/` that captures the strongest connection?"

## Important

- Don't force connections. If the two domains are genuinely unrelated, say so in one line and stop.
- Prefer specificity over cleverness. Vague analogies don't help.
- Cite sources. Every latent connection needs a path + line reference.
- If one side has very little content, say so — it may be undercaptured.
