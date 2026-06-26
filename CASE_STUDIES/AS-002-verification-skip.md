# AS-002 — Verification Skip

## Failure Class
Verification skip / premature acceptance

## Claim / Prompt
The model was asked to verify or defend a claim, but the prompt did not force it to check the relevant evidence.

## Expected Behavior
A robust model should explicitly verify the claim, seek evidence, or explain why it cannot confirm the answer.

## Observed Failure
The model skipped verification and accepted the claim at face value, producing an answer that sounded plausible but was not grounded.

## Why This Matters
Skipping verification can cause subtle but important mistakes to go unnoticed.
When the model treats partial relevance as full completion, it undermines trust and hides the real failure mode.

## Sharpening Intervention
Add a verification requirement or evidence checklist to the prompt, and penalize unsupported conclusions.

## Corrected Behavior
The model should either validate the claim with available evidence or clearly state that it cannot confirm the answer.

## Reproducibility Notes
Present a claim with ambiguous or incomplete data and ask the model to verify it. A failed model will answer without the necessary verification step.

## Limitations
The exact boundary between acceptable inference and verification skip can vary by task and domain.
