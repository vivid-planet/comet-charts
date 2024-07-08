---
"comet-site-preview-v1": major
---

- **BREAKING**: Avoid hardcoding values in configMaps or secrets and only generate them if they are not empty. Use `Values.env` or `Values.secrets` to fill them.
- **BREAKING**: Disable `autoMountServiceAccountToken` by default.
