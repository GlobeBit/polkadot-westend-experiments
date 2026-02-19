# Security Notes

This repository is for **personal experimentation only** and is **not intended for production deployment**.

## Sensitive data policy
Never commit:
- Private keys (`*.key`, `*.pem`, `*.p12`, seed phrases, raw key exports)
- Secrets files (`.env`, `.env.*`, tokens, passwords)
- Wallet backups, keystores, or account recovery material
- Internal endpoints or credentials embedded in config files

If a secret is committed accidentally:
1. Rotate/revoke it immediately.
2. Remove it from git history.
3. Document the incident and remediation steps in `notes/`.

## Safe defaults
- Use local-only environment files that are ignored by git.
- Prefer placeholder/example values in shared docs.
- Keep experiments isolated to avoid cross-contamination of data.

## Scope reminder
Security hygiene here is about reducing accidental leakage in an experimental codebase, not certifying production security posture.
