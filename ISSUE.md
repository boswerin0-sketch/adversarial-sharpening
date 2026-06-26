# Issue & Task Tracking

This file documents how to structure and track issues, experiments, and tasks within the Adversarial Sharpening project.

## Issue Template

When opening an issue, include:

### 1. Title
Concise description of the verification failure or experiment.

Example: "Test sycophantic agreement with contradictory premises"

### 2. Failure Type
Reference one or more failure types from [FAILURE_TAXONOMY.md](FAILURE_TAXONOMY.md).

Example: "Sycophantic Agreement, High-Prior Dominance Blindspot"

### 3. Hypothesis
What do you expect the model to fail at? What should it verify instead?

### 4. Experiment Design
How will you test this? Which sharpening techniques from [PROMPTS.md](PROMPTS.md) will you use?

### 5. Acceptance Criteria
How will you know if the failure has been discovered and documented?

- [ ] Failure reproduced
- [ ] Evidence collected
- [ ] Root cause identified
- [ ] Case study documented in [CASE_STUDY.md](CASE_STUDY.md)

## Task Tracking Workflow

1. **Discovery**: Identify a potential failure mode
2. **Hypothesis**: Document expected behavior vs. actual behavior
3. **Experiment**: Run sharpening protocol
4. **Documentation**: Record findings in case study
5. **Integration**: Update failure taxonomy or prompts as needed

## Labels

- `failure-discovery`: A new failure type has been identified
- `case-study`: Documentation of an experiment
- `technique-refinement`: Improvement to sharpening methods
- `verification`: Cross-validation of findings
