---
"comet-api-v1": patch
---

- Add support for multiple secrets per deployment
- Add option to disable automountServiceAccountToken
- Remove entries from values.yaml that are not in use anymore
- Replace template information in Chart.yaml with correct information
- Fix syntax: Templates resulted in syntax error when `image.pullSecret` is set.
- Change `additionalLabels` variable to `additionalPodLabels` for better understanding
- Add support for pod labels in cronjob pods
