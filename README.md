# plume-lang-parser-loom

`plume-lang-parser-loom` explores compilers with a small Julia codebase and local fixtures. The technical goal is to create a Julia reference implementation for parser workflows, centered on graph analysis, node-edge fixtures, and cycle and reachability reports.

## Problem It Tries To Make Smaller

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how IR pressure and stack depth should influence a review result.

## Plume Lang Parser Loom Review Notes

`recovery` and `stale` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/plume-lang-parser-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `diagnostic reach` and `IR pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Julia path is deliberately direct, with fixtures doing most of the explaining.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Known Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
