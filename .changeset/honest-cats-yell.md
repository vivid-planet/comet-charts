---
"comet-api-v3": patch
---

`additionalConfigMapNames` entries are now loaded before the chart's own configmap in `envFrom`, so the chart's own env values take precedence and can override values from additional configmaps.
