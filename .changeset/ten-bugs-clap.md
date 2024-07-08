---
"comet-admin-v1": patch
---

- Add option to disable automountServiceAccountToken
- Replace template informations in Chart.yaml with correct informations
- Fix Syntax: Templates resulted in syntax error when having `image.pullSecret` set.
- Change additionalLabels variable to additionalPodLabels for better understanding
