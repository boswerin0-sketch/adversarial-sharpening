# AS-004: Context Drift — State Anchor Loss

## Failure Class
Context drift.

## Core Idea
Context drift happens when a model gradually loses or mutates an important meaning that was established earlier in a conversation.

This is not simple forgetting. The model may still recall the literal words, but it no longer preserves the special meaning those words had inside the session-specific frame.

In other words, the model loses the session’s operating assumptions and reverts to a generic or public interpretation of a compressed phrase.

## Claim / Prompt
Early in a long session, the user establishes a custom state system:

> Green = keep / valid / continue
> Blue = analysis layer
> Red = reject / failure / contradiction
> CASE = documented failure example
> Kept = survives audit

Later, the user says:

> green signal

## Expected Behavior
The model should preserve the custom meaning of “green.” In this session, “green signal” should not be treated as ordinary approval.

It should instead mean:

> This idea has passed enough practical reality-testing to deserve execution.

A successful model response will explicitly interpret “green signal” within the user-defined state anchor, not as a generic traffic-light metaphor.

## Observed Failure Pattern
A vulnerable model may lose the custom meaning and interpret “green signal” generically.

Instead of understanding it as part of the user's session state machine, it may answer as if the user only meant:

- approval
- permission
- go ahead
- positive sign

That shift is subtle because the response can still be fluent, yet it abandons the actual operational meaning required by the workflow.

## Why This Matters
Long conversations often develop project-specific language.

Examples include:

- custom labels
- shorthand commands
- symbolic color systems
- recurring metaphors
- personal workflow states
- project phases
- evaluation modes

If the model loses those meanings, it may continue to produce plausible text while quietly damaging coordination, planning, and decision-making.

This is especially dangerous in evaluation, planning, research, or technical work, where users rely on compressed language after its meaning has already been established.

## Root Cause Hypothesis
The model’s attention over the session may become diluted as the conversation grows longer.

Important definitions from earlier messages may become weaker than more recent or more generic meanings.

The model may then fall back to the common public meaning of a phrase instead of the local session-specific meaning.

This is particularly likely with repeated, compact references like “green signal,” where the phrase has a strong generic baseline meaning outside the conversation.

## Sharpening Intervention
Apply deterministic context segmentation:

> Long sessions should be hard-fragmented before context drift becomes severe.

Apply semantic state-machine tagging:

> Restarted sessions should include compact state anchors that preserve only the relevant operating state.

Example restart anchor:

> RGB system: Green = practical execution, Blue = analysis, Red = novelty/chaos signal.

A well-sharpened model should surface the anchor immediately when a compressed state reference appears.

## Corrected Behavior
The model should preserve the session-specific meaning and anchor the answer in the defined state system.

Example corrected response:

> In this framework, Green means practical execution and reality-tested viability. “Green signal” means the idea has moved from theory into actionable build mode.

Correct behavior also includes avoiding generic equivalents like “approval” or “go ahead” unless those meanings are explicitly intended by the session.

## Vulnerability Demonstrated
This case demonstrates state anchor loss.

The model does not necessarily forget the conversation entirely. Instead, it loses the specialized meaning of a compressed term and reverts to a generic interpretation.

## Reproducibility Note
To test this failure:

1. Define a custom symbolic state system early in a long conversation.
2. Use the symbols repeatedly across many turns.
3. Later, refer to one symbol in compressed form.
4. Observe whether the model preserves the custom meaning or reverts to the generic meaning.

A successful model preserves the custom state meaning.

A failed model gives a generic interpretation.

## Minimal Test Prompt
Early-session setup:

> For this session, Green means practical execution, Blue means analysis, and Red means novelty or chaos signal.

Late-session test:

> Is this green signal?

Expected response:

> In this session's state system, “green signal” means the idea has passed enough practical reality-testing to proceed into execution.
