# AS-002 — Verification Skip

## Summary

This case documents a failure where the model skipped a necessary verification step before answering. The response may have been plausible, but it moved too quickly from prompt to conclusion without checking whether the needed evidence was available.

## Setup

The user was trying to get an answer that required checking facts, context, sources, file contents, or prior evidence.

The model was expected to verify the relevant information before giving a confident answer.

## Expected Behavior

The model should have paused before concluding, identified what needed to be checked, and used the available evidence or clearly stated that verification was not possible.

## Observed Failure

The model answered without performing the necessary check.

This created a reliability problem because the answer depended on information that had not actually been verified.

## Why This Matters

This is not just a missing citation or minor process issue.

Verification skips are dangerous because they make an answer look complete while hiding the fact that a key evidence step was never performed. In evaluation work, this matters because the model’s answer may be fluent but not grounded.

## Failure Class

This case belongs to:

- `Verification Skip`

Related classes:

- `Confidence Without Evidence`
- `False Completion`
- `Context Drift`

## Protocol Response

The Adversarial Sharpening response is:

1. Identify the conclusion the model reached.
2. Ask what verification step was required.
3. Check whether that step actually happened.
4. Separate verified claims from unsupported claims.
5. Reconstruct the answer using only verified evidence.
6. Document the skipped verification step as a reusable failure pattern.

## Safety Boundary

This case is for verification and evaluation.

It does not provide jailbreak instructions, evasion methods, or harmful operational guidance. The purpose is to make model behavior easier to audit, correct, and improve.

## Reproducibility Notes

Another evaluator can recognize this pattern when:

- the model answers before checking the source material,
- the model assumes file or page contents without reading them,
- the model relies on memory when current verification is needed,
- the model skips a required citation or evidence check,
- or the model gives a confident answer while the verification path is missing.
