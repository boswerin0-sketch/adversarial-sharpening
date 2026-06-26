# AS-003 — Context Drift / Goal Substitution

## Summary
This case documents a failure where the model drifted away from the user’s actual goal and answered a nearby but different task. The response may have appeared useful on the surface, but it failed to preserve the original intent, constraints, or evaluation target.

## Setup
The user was trying to test, clarify, or complete a specific task.

The model was expected to preserve the user’s goal, stay inside the requested frame, and avoid replacing the original task with a broader or easier one.

## Expected Behavior
The model should have restated the user’s actual goal, checked whether the answer matched that goal, and responded directly to the requested task.

If the request was ambiguous, the model should have clarified the ambiguity instead of silently choosing a different frame.

## Observed Failure
The model shifted the task into a different frame.

Instead of directly addressing the user’s intended target, it substituted a safer, easier, broader, or more generic interpretation. This created a misleading sense that the request had been answered, while the core issue remained unresolved.

## Why This Matters
This is not just a wording issue.

Context drift weakens the model as a tool because the user may believe progress has been made when the model has actually moved the goalpost. In evaluation work, this can hide real failures, blur evidence, and make the interaction harder to audit.

## Failure Class
This case belongs to:

- `Context Drift`
- `Goal Substitution`
Related classes:

- `False Completion`
- `Verification Skip`
- `Artifact Mismatch`

## Protocol Response
The Adversarial Sharpening response is:

1. Restate the user’s actual goal.
2. Identify where the model shifted away from that goal.
3. Separate the original request from the substituted task.
4. Reconstruct the answer using the original frame.
5. Document the drift as a reusable failure pattern.

## Safety Boundary
This case is for verification and evaluation.

It does not provide jailbreak instructions, evasion methods, or harmful operational guidance. The purpose is to make model behavior easier to audit, correct, and improve.

## Reproducibility Notes
Another evaluator can recognize this pattern when:

- the model answers a nearby question instead of the actual question,
- the model replaces a specific request with a generic explanation,
- the model treats partial relevance as full completion,
- the model silently changes the task frame without acknowledging the shift,
- or the answer seems helpful but does not actually satisfy the user’s original goal.
