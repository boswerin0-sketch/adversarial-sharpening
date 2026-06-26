# adversarial-sharpening
A state-machine protocol for LLM red teaming and verification-failure discovery.
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
| AS-001 | High-prior dominance blindspot | [Tool vs. Taylor Swift Billboard case](CASE_STUDIES/001-high-prior-dominance-tool-billboard.md) |
| AS-002 | Sycophantic agreement | [Polygon interior angle sum trap](CASE_STUDIES/002-sycophantic-agreement-polygon-trap.md) |
| AS-003 | Context Drift | [Protocol-state decay over long/shorthand interaction](CASE_STUDIES/AS-003-context-drift.md) |
| AS-004 | Context drift | [State anchor loss case](CASE_STUDIES/004-context-drift-state-anchor-loss.md) |

## Core Protocol Files

- [Failure Taxonomy](FAILURE_TAXONOMY.md)
- [Evaluation Case Template](EVAL_TEMPLATE.md)
- [Safety Boundary](SAFETY_BOUNDARY.md)
- [Roadmap](ROADMAP.md)
- [Trust but Verify Protocol](PROMPTS/trust-but-verify.md)
- [Sharpening Framework](PROMPTS/sharpening-framework.md)
