# Slippery Stone Protocol

## Purpose

A lightweight protocol for surfacing verification failures, assumption drift, and premature closure in conversational reasoning tasks.

## Core Steps

1. State the claim or task plainly.
2. Identify the evidence that would support or refute it.
3. Check whether the current response actually uses that evidence.
4. Note any omitted assumptions, hidden constraints, or context shifts.
5. Re-state the conclusion only after verification.

## When to Use

Use this protocol when a model appears confident but has not demonstrated enough support for the claim, or when the task could be answered through a shallow completion artifact rather than a verified one.

## Expected Outcome

The result should be a more grounded answer that distinguishes evidence from speculation and highlights what remains unverified.
