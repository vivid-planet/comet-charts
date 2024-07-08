---
"comet-api-v1": major
---

- BREAKING: Don't hardcode values in configMaps or secrets and don't generate those if they would be empty. They have to be filled with Values.env or Values.secrets
- BREAKING: Deactive builder cronjob as default
