---
"comet-api-v1": major
---

- **BREAKING**: Avoid hardcoding values in configMaps or secrets and only generate them if they are not empty. Use `Values.env` or `Values.secrets` to populate them.
- **BREAKING**: Disable the builder cronjob by default.
