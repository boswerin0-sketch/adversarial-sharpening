# Prompts & Methods

This file documents the conversational techniques and prompt patterns used in the Adversarial Sharpening protocol.

## Core Operating Principles

> We are not in the believing business.  
> We are not in the doubting business.  
> We are in the sharpening business.

## Sharpening Techniques

### 1. Evidence-First Questioning
Ask the model to provide evidence or verification before accepting claims.

**Pattern**: "What would verify this? How could we check this?"

### 2. Assumption Surfacing
Expose hidden assumptions by asking for explicit reasoning.

**Pattern**: "What are you assuming here? Why does that assumption hold?"

### 3. Extremal Testing
Test claims at boundary conditions or extreme cases.

**Pattern**: "Does this hold when X is 0? What about when X is maximized?"

### 4. Alternative Hypotheses
Deliberately propose contradictory explanations and request comparative evaluation.

**Pattern**: "Could this also be explained by [alternative]? How would we distinguish between them?"

### 5. Confidence Calibration
Challenge overconfidence by requesting uncertainty estimates and evidence thresholds.

**Pattern**: "How confident are you? What evidence would change your mind?"

### 6. Tool-Use Activation
When verification tools are available, explicitly request their use rather than accepting reasoning without verification.

**Pattern**: "Can we verify this with [tool/search/computation]?"

### 7. Context Consistency Checks
Revisit earlier session assumptions to detect drift or mutation.

**Pattern**: "Earlier you said X. Does that still hold? Has your reasoning changed?"

## Prompt Library

(To be populated with curated prompts for each failure type)
