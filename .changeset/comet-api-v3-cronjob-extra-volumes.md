---
"comet-api-v3": minor
---

Add `extraVolumeMounts`/`extraVolumes` support to `cronJobs.<name>` entries, so a CronJob's container can mount additional volumes (e.g. a PersistentVolumeClaim for a persistent cache) — previously the only mountable volume was the service-account token.
