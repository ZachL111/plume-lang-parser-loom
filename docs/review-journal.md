# Review Journal

The repository goal stays the same: create a Julia reference implementation for parser workflows, centered on graph analysis, node-edge fixtures, and cycle and reachability reports. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 164, lane `ship`
- `stress`: `lowering drift`, score 196, lane `ship`
- `edge`: `stack depth`, score 190, lane `ship`
- `recovery`: `diagnostic reach`, score 224, lane `ship`
- `stale`: `IR pressure`, score 155, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
