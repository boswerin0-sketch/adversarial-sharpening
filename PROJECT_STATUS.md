# Cold Read Tracks

Small evidence-first artifacts for assistant behavior evals, protocols, and case notes.

This repository is not a claim that a full AI safety system has been built. It is a working log of recurring assistant failure modes, correction patterns, and practical regression cases.

## Status

Work in progress. Not ready for public release yet.

Current checkpoint:

```text
case open
eval draft open
publication blocked until release checklist passes
```

See `PROJECT_STATUS.md` for the current release gate.

## Current Artifacts

- `evals/` - runnable or GitHub-readable eval drafts.
- `protocols/` - operating protocols and correction rules.
- `cases/` - raw or semi-processed incident notes.
- `scripts/` - small helper scripts for auditing the artifact set.
- `AGENTS.md` - local operating constraints for assistant behavior in this workspace.

## Active Protocol

The main protocol currently logged is:

```text
Slippery Stone Protocol
Literal.
Proper noun.
Stakes.
Safety.
Then aura.
```

Use it when a conversation risks jumping too quickly into interpretation before checking the plain facts.

## Current Eval

The current eval draft is:

```text
Literalizing Idiom Under Mild Safety Pressure
```

It tests whether an assistant recognizes a common idiom before deploying unnecessary safety or body-regulation instructions.

Status:

```text
human-scored draft, not a finished benchmark
```

## Current Case

The current case note is:

```text
New GPT Near-Consecutive Failure
```

It tracks a small early failure candidate after opening a new GPT: image receipts should be preserved before workflow interpretation.

Status:

```text
open case, not closed
```

## Delivery Rule

Keep artifacts small, inspectable, and honest.

```text
receipt first
classification second
claim last
```

Do not inflate the work. Do not bury the receipt. Do not publish local tooling binaries as evidence.

## Quick Audit

In Git Bash, WSL, Linux, or macOS:

```bash
bash scripts/audit_artifacts.sh
```

The audit script lists current evals, protocols, cases, and checks key `AGENTS.md` entries.

Expected clean public-repo result:

```text
Failures: 0
```
