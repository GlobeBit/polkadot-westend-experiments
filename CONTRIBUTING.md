# Contributing (Internal / Experimental Scope)

## Project intent
This repository is maintained for internal experimentation and personal testing.
It is intentionally non-production, unsupported, and not designed for third-party reuse.

## Contribution boundaries
Contributions should:
- Preserve the experimental nature of the repository
- Prefer lightweight documentation and reversible changes
- Avoid introducing production-readiness signals (SLA, hard guarantees, public support claims)

Contributions should not:
- Assume external consumers
- Add licensing/distribution claims not explicitly approved by the owner
- Commit secrets or sensitive operational data

## Suggested workflow
1. Keep changes small and focused.
2. Document intent and outcome in `notes/` when adding experiments.
3. Use `scripts/checks.sh` locally before opening a PR.
