# Ledger Rel Runbook Loom Walkthrough

This note is the quickest way to read the extra review model in `ledger-rel-runbook-loom`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | budget pressure | 188 | ship |
| stress | failure width | 162 | ship |
| edge | recovery gap | 185 | ship |
| recovery | runbook drift | 242 | ship |
| stale | budget pressure | 151 | ship |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stale` becomes less cautious without a clear reason, I would inspect the drag input first.
