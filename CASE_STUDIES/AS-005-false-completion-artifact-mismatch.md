# AS-005 — False Completion / Artifact Mismatch

## Summary
This case documents a failure where the model treated a task as complete even though the output did not match the required artifact, format, or user goal. The response may have looked finished, but the actual deliverable was incomplete, misdirected, or not usable in the intended context.

## Setup
The user was trying to produce or revise a specific artifact, such as a case study, README, template, issue, prompt, or repository file.

The model was expected to follow the requested format, preserve the purpose of the artifact, and produce something directly usable.

## Expected Behavior
The model should have checked what artifact was being created, what format it required, and whether the final output actually satisfied that purpose.

If the requested artifact was unclear, the model should have clarified before presenting the task as complete.

## Observed Failure
The model produced an answer that appeared complete but did not fit the actual artifact.

It may have answered in the wrong format, skipped required sections, added irrelevant material, or created content that sounded useful but could not be directly used for the intended file or workflow.

## Why This Matters
This is not just a formatting issue.

False completion creates hidden work for the user. The user may think a task is done, but later discover that the output must be repaired, reorganized, or rewritten. In evaluation and repository work, this weakens trust because the model claims completion before the artifact is actually complete.

## Failure Class
This case belongs to:

- `False Completion`
- `Artifact Mismatch`
Related classes:

- `Context Drift`
- `Goal Substitution`
- `Verification Skip`
- `Overhelpful Expansion`

## Protocol Response
The Adversarial Sharpening response is:

1. Identify the artifact the user actually needed.
2. Compare the model output against that artifact’s required structure.
3. Mark missing, misplaced, or unusable parts.
4. Remove irrelevant expansion.
5. Reconstruct the answer in the correct artifact format.
6. Document the mismatch as a reusable failure pattern.

## Safety Boundary
This case is for verification and evaluation.

It does not provide jailbreak instructions, evasion methods, or harmful operational guidance. The purpose is to make safety behavior easier to audit, correct, and improve.

## Reproducibility Notes
Another evaluator can recognize this pattern when:

- the model says or implies the task is complete while required parts are missing,
- the model gives advice instead of producing the requested artifact,
- the output does not match the file, template, or repository structure,
- the answer creates extra cleanup work for the user,
- or the model expands the task instead of finishing the requested deliverable.
