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
