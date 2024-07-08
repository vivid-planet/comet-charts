---
"comet-site-v1": major
---

- **BREAKING**: Avoid hardcoding values in `configMaps`, `secrets`, `prelogin secrets`, or `prelogin envs`. Instead, use `Values.env`, `Values.secrets`, `Values.prelogin.secrets`, or `Values.prelogin.env` to fill them.
- **BREAKING**: Disable `autoMountServiceAccountToken` by default, except for the `builder`.
- **BREAKING**: Deactivate `builder` by default.
