---
"comet-api-v1": patch
---

Add support for multiple secrets per deployment
Add option to disable automountServiceAccountToken
Remove entries from values.yaml that are not in use anymore
Replace template informations in Chart.yaml with correct informations
Fix syntax: Templates resulted in syntax error when having `image.pullSecret` set.
Change additionalLabels variable to additionalPodLabels for better understanding
Add support for pod labels in cronjob pods
