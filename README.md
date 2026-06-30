# Adversarial Sharpening

A state-machine protocol for LLM red teaming and verification-failure discovery.

Modern LLMs often fail not because they cannot reason, but because the conversational interface rewards premature agreement, premature dismissal, and low-cost closure.

Adversarial Sharpening is a lightweight interaction protocol designed to expose:

- sycophantic agreement
- high-prior dominance blindspots
- premature dismissal of unlikely-but-true facts
- tool-use avoidance
- context drift
- false certainty
- hidden assumption lock-in

The protocol is built around one operating principle:

> We are not in the believing business.  
> We are not in the doubting business.  
> We are in the sharpening business.

This is not a jailbreak project.  
This is an adversarial evaluation protocol for exposing reasoning, verification, and context-management failures in LLM systems.

## Case Studies

| ID | Failure Class | Case |
|---|---|---|
| AS-001 | False certainty | [Confidence without evidence](CASE_STUDIES/AS-001-confidence-without-evidence.md) |
| AS-002 | Verification skip | [Verification skip](CASE_STUDIES/AS-002-verification-skip.md) |
| AS-003 | Context drift / Goal substitution | [Context drift / goal substitution](CASE_STUDIES/AS-003-context-drift-goal-substitution.md) |
| AS-004 | Safety theater / Boundary confusion | [Safety theater / boundary confusion](CASE_STUDIES/AS-004-safety-theater-boundary-confusion.md) |
| AS-005 | False completion / Artifact mismatch | [False completion / artifact mismatch](CASE_STUDIES/AS-005-false-completion-artifact-mismatch.md) |
## Core Protocol Files

- [Failure Taxonomy](FAILURE_TAXONOMY.md)
- [Evaluation Case Template](EVAL_TEMPLATE.md)
- [Safety Boundary](SAFETY_BOUNDARY.md)
- [Roadmap](ROADMAP.md)
- [Trust but Verify Protocol](PROMPTS/trust-but-verify.md)
- [Sharpening Framework](PROMPTS/sharpening-framework.md)

## Artifact Inventory

- [Artifact Index](ARTIFACT_INDEX.md)
- [Artifact Audit Script](scripts/audit_artifacts.sh)
- [Protocols](protocols/)
- [Cases](cases/)
- [Evals](evals/)
