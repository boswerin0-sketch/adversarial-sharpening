# Case Studies
This folder contains observed examples of model failure patterns used to test the Adversarial Sharpening protocol.

Each case study documents a specific kind of failure that can appear during human-LLM interaction. The goal is not to attack the model, jailbreak the model, or collect random mistakes. The goal is to make failure patterns easier to recognize, evaluate, and correct.

## Current Case Studies

- `AS-001 — Confidence Without Evidence`
- `AS-002 — Verification Skip`
- `AS-003 — Context Drift / Goal Substitution`
- `AS-004 — Safety Theater / Boundary Confusion`
- `AS-005 — False Completion / Artifact Mismatch`
- `AS-006 — Idiom Literalization From Weak Safety Trigger`

## Standard Case Structure
Each case study should include:

- Summary
- Setup
- Expected Behavior
- Observed Failure
- Why This Matters
- Failure Class
- Protocol Response
- Safety Boundary
- Reproducibility Notes

## Safety Boundary
These case studies are verification and evaluation artifacts.

They do not provide jailbreak instructions, evasion methods, or harmful operational guidance. Their purpose is to make model behavior easier to audit, correct, and improve.

## Use
These cases can be used to:

- identify recurring model failure patterns,
- compare model behavior across interactions,
- improve prompt and evaluation design,
- document reliability issues,
- and build safer human-in-the-loop workflows.
