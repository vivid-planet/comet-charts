---
"comet-site-v1": major
---

- BREAKING: Don't hardcode values in configMaps, secrets, prelogin secrets or prelogin envs and don't generate those if they would be empty. They have to be filled with Values.env, Values.secrets, Values.prelogin.secrets or Values.prelogin.env
- BREAKING: Deactivate autoMountServiceAccountToken as default, except for builder
- BREAKING: Deactive builder as default
