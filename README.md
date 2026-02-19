# polkadot-westend-experiments

Disclaimer: This code is experimental, intended for personal testing, and may contain bugs. It’s provided “as-is” without any warranty or support. No permission is granted for reuse, modification, or distribution. Sensitive information may be present; please do not use or replicate.

Note: This repository has no license and is not for production use.

## Repository housekeeping
- Cleanup plan: [CLEANUP_PROPOSAL.md](CLEANUP_PROPOSAL.md)
- Security handling guidance: [SECURITY_NOTES.md](SECURITY_NOTES.md)
- Contribution scope: [CONTRIBUTING.md](CONTRIBUTING.md)

## Structure conventions
- `experiments/` isolated prototypes
- `notes/` findings and dead ends
- `scripts/` local helper/check scripts
- `archive/` retired experiments
- `templates/` reusable experiment template(s)

Optional local hygiene checks:
```bash
./scripts/checks.sh
```
