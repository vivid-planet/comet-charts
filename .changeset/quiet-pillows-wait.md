---
"comet-site-preview-v2": minor
"comet-api-v10": minor
"comet-site-v8": minor
"comet-site-v9": minor
"comet-api-v9": minor
---

BREAKING: Don't hardcode values in configMaps or secrets and don't generate those if they would be empty. They have to be filled with Values.env or Values.secrets
