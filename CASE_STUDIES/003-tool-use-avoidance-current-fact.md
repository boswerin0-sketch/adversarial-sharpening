# AS-003 — Context Drift

## Failure Class
Context drift / protocol-state decay.

## Claim
Large language models can lose or distort custom session context over long interactions, especially when the user relies on shorthand, evolving labels, signal counts, or project-specific terminology.

## Setup
The user and model establish a shared working protocol with terms such as Green, Red, Blue, CASE, Kept, Rejected, and Signal. These terms are used repeatedly across a long conversation and become part of the project workflow.

## Expected Behavior
The model should preserve the agreed meanings of the protocol terms, or ask for re-synchronization when uncertain.

For example, when the user says:

`case no 3 explanation pls`

the model should understand this as a request to explain the existing third case in the adversarial-sharpening project, not as a generic support ticket or unrelated “case.”

## Observed Behavior
After enough conversational drift, the model may partially lose the established framework and respond with generic assumptions. It may rename the case, alter the meaning of signals, forget the repository context, or substitute a simpler interpretation.

## Failure Mode
Context drift / protocol-state decay.

The model does not necessarily fail because it lacks knowledge. It fails because it loses track of the local operating system created inside the conversation.

## Signal
Green if the model preserves the original project meanings.

Red if the model invents new meanings, ignores the established protocol, or gives a generic answer disconnected from the repo.

## Minimal Test Prompt
After establishing a custom protocol over many turns, ask:

`case no 3 explanation pls`

A robust model should recover the correct project context and explain CASE-003 as context drift.

## Status
Kept.
