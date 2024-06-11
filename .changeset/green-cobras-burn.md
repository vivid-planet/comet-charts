---
"comet-api-v1": major
---

Migration to Open Source
BREAKING: Don't hardcode values in configMaps or secrets and don't generate those if they would be empty. They have to be filled with Values.env or Values.secrets
