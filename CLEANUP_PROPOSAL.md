# Cleanup Proposal (while preserving the repository's original intention)

## Context
This repository is intentionally experimental, private in spirit, and not intended for production or external reuse. The cleanup plan below focuses on reducing ambiguity and accidental misuse without changing that intention.

## Goals
- Keep the project clearly marked as **experimental / personal testing only**.
- Reduce risk of accidental exposure of sensitive material.
- Improve maintainability and future self-onboarding.
- Avoid introducing anything that implies production readiness.

## Proposed Cleanup Plan

### 1) Clarify repository boundaries (documentation-only)
- Add a short `SECURITY_NOTES.md` describing:
  - what kinds of data must never be committed,
  - expected handling of secrets,
  - that this repo is not for deployment.
- Add a `CONTRIBUTING.md` with a strict scope statement:
  - internal experiments only,
  - no expectation of support,
  - no third-party consumption assumptions.

**Why:** Keeps intent explicit as the repo evolves.

---

### 2) Improve ignore/safety defaults
- Add or tighten `.gitignore` entries for common secret and local artifacts:
  - `.env`, `.env.*`, `*.key`, `*.pem`, `*.p12`, `*.seed`, local logs, temp files.
- Optionally add `.gitattributes` to normalize line endings and reduce noisy diffs.

**Why:** Prevents accidental commit of sensitive material and noisy repo history.

---

### 3) Organize future experiments by convention
- Use a simple structure for future growth:
  - `experiments/` for isolated prototypes,
  - `notes/` for findings and dead ends,
  - `scripts/` for repeatable local helpers,
  - `archive/` for retired experiments.
- Keep each experiment self-contained with a tiny README.

**Why:** Maintains speed of experimentation while reducing clutter.

---

### 4) Add a lightweight experiment template
- Add `templates/experiment-template.md` with:
  - objective,
  - assumptions,
  - steps run,
  - outcome,
  - follow-up.

**Why:** Improves traceability without adding heavy process.

---

### 5) Introduce minimal hygiene checks (non-blocking)
- Add optional local checks script (e.g., `scripts/checks.sh`) for:
  - formatting checks (if relevant later),
  - secret-pattern scan (basic regex),
  - TODO/FIXME summary.
- Keep checks advisory, not CI-gated, to preserve experimentation speed.

**Why:** Catches obvious problems early while staying lightweight.

---

## Non-Goals
- No productionization.
- No change to ownership/support model.
- No relicensing or public distribution assumptions.

## Suggested Implementation Order
1. Add safety docs (`SECURITY_NOTES.md`, `CONTRIBUTING.md`).
2. Add `.gitignore` hardening.
3. Add structure conventions + template.
4. Add optional local hygiene script.

## Success Criteria
- New contributors (or future-you) can understand scope in under 2 minutes.
- No obvious secret file patterns are tracked.
- Experiments can be found and reviewed without searching ad hoc locations.
- Repository still communicates “experimental, private, non-production” at first glance.
