# ledger-rel-runbook-loom

`ledger-rel-runbook-loom` keeps a focused Solidity implementation around reliability. The project goal is to develop a Solidity command-oriented project for runbook scenarios with append-only fixtures, checkpoint recovery checks, and synthetic fixtures only.

## Why It Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Ledger Rel Runbook Loom Review Notes

Start with `runbook drift` and `budget pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Features

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ledger-rel-runbook-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `runbook drift` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Solidity checks add a pure review lens and Foundry coverage.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Limitations And Roadmap

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
