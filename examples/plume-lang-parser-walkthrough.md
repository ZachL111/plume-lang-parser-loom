# Plume Lang Parser Loom Walkthrough

I use this file as a small checklist before changing the Julia implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 164 | ship |
| stress | lowering drift | 196 | ship |
| edge | stack depth | 190 | ship |
| recovery | diagnostic reach | 224 | ship |
| stale | IR pressure | 155 | ship |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stale` becomes less cautious without a clear reason, I would inspect the drag input first.
