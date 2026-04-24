# obversary-citations

**Role:** a **bibliography file** the website loads — not the main story. The **narrative** lives on [obversarystudios.org](https://obversarystudios.org) (Resources → **Literature** uses `/data/citations.json` after sync). Keep this repo focused on **metadata + your notes**; do not re-explain the full systems architecture here (link the site if needed).

Versioned catalog of **sources cited in Obversary Studios work** — papers, frameworks, standards, and internal iteration notes.

## Honest scope (short)

- **This repo is not** the research paper, product spec, or eval report — it’s a **citation catalog** and sync source for the public site.
- **Verified** = your JSON rows + URLs you checked; “polished README” does not add evidence.

## Files

| File | Purpose |
|------|---------|
| `citations.json` | Canonical catalog (categories + entries). |
| `schema.json` | JSON Schema for `citations.json` (optional validation). |

## Entry fields

- **title** (required)
- **authors**, **year**, **type** (`paper` | `framework` | `standard` | `book` | `web` | `report` | `thesis`)
- **url** — link to PDF, canonical page, or DOI resolver
- **cited_in** — where you reference this (article titles, repo names, drafts)
- **notes** — short summary
- **iteration** — optional revision / tracking line for your own iterations

## Sync to the website

The marketing site loads **`/data/citations.json`** from the same deploy (no CORS). After editing here:

```bash
# From this repo (adjust paths)
cp citations.json ../obversary-website/data/citations.json
# Commit both repos, or submodule — see website README.
```

## License

Bibliographic metadata and your notes are provided for attribution and research transparency. Third-party works remain under their respective copyrights.
