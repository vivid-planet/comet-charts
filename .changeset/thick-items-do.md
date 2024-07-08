---
"comet-site-v1": patch
---

- Add support for multiple secrets per deployment
- Only use pullsecret for site if present
- Add option to disable automountServiceAccountToken
- Add support for additional labels for site pvc
- Remove entries from values.yaml that are not in use anymore
- Replace template information in Chart.yaml with correct information
- Add selectorLabels to build cronjob
- Change additionalLabels variable to additionalPodLabels for better understanding
- Set additionalPodLabels at correct space
- Fix path for source of rsync
- Change list syntax of prelogin envs
