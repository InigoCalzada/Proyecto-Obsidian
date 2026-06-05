---
title: "Vault style guide"
created: 2026-06-05
updated: 2026-06-05
status: stable
type: knowledge
area: system
tags: [system, style, formatting]
confidence: high
---

## Purpose

This file is the single source of truth for formatting decisions in this vault. Every agent, module, and template follows these rules. When in doubt, come here first.

---

## Lists

**Bullets** — when items are independent and order does not matter.

**Numbered** — only when the order changes the result. If you can reorder the items without breaking anything, use bullets.

**Maximum 5 items per list.** If you reach 6, either group into sub-categories or split into separate notes.

---

## Bold labels

Use `- **Term:** description` when a bullet has a term → explanation structure.

Do not use bold labels in lists of homogeneous elements (a list of links, a list of tags, a list of similar items with no label/value split).

---

## Structured data — decision matrix

The format depends on what the reader needs to do with the information.

| Situation | Format |
|---|---|
| Single description per item | Bold-bullet: `- **Item:** description` |
| Two implicit columns (name → value) | Bold-bullet with em dash: `- **Name:** value — note` |
| 3+ columns with row comparison | Markdown table |
| Comparison worth linking and permanent value | Dedicated `connection.md` note |

**Rule of thumb:** if the reader needs to compare two rows against each other to understand something, use a table. If the reader can scan item by item without losing context, use bold-bullets.

Never use a table for 2 columns — bold-bullets handle that with less friction and are fully editable on mobile.

---

## Headers

Use only `##` (H2). Never `###` (H3).

If a section needs a sub-section, that sub-section has enough substance to be its own note. Create it and link to it.

---

## Separators

Use `---` to separate conceptually distinct blocks within a note.

Do not use `---` between every section. Reserve it for genuine breaks — where the reader is shifting mental context, not just moving to the next point.

Typical split points:
- Between the definition block and the practical block in a knowledge note
- Between the context block and the outcomes block in a project note
- Between the content block and the linking/meta block in any note

---

## Code blocks

Use triple-backtick code blocks when showing code, commands, or structured text that must be read verbatim. Always specify the language when relevant.

---

## Callouts

Use Obsidian callouts (`> [!type]`) sparingly — only when a specific piece of information genuinely needs to stand out from the surrounding text (a warning, a critical insight, a deprecated pattern). Not for decoration.

---

## Frontmatter

Every note has the full frontmatter block. No exceptions. Fields in order:

```yaml
---
title: ""
created: YYYY-MM-DD
updated: YYYY-MM-DD
status: inbox | active | stable | outdated
type: project | knowledge | resource | agent | connection | index
area: programming | marketing | fitness | system | ...
tags: [tag1, tag2, tag3]
related: ["[[note-a]]", "[[note-b]]"]
source: ""
confidence: high | medium | low
---
```

`confidence` values:
- `high` — verified, tested, current
- `medium` — solid but may need verification
- `low` — single source, unverified, or aging

---

## Language

Vault content (notes, frontmatter, tags, filenames): **English always.**

Communication with the user (responses, questions, reports): **Spanish always.**

---

## Filenames

Lowercase, hyphens, no spaces. `json-schema-validation.md` not `JSON Schema Validation.md`.
