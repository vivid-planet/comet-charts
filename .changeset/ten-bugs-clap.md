---
"comet-admin-v1": patch
---

- Add option to disable `automountServiceAccountToken`
- Replace template information in `Chart.yaml` with correct information
- Fix syntax: Templates resulted in a syntax error when `image.pullSecret` is set.
- Change `additionalLabels` variable to `additionalPodLabels` for better understanding
