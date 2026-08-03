---
"comet-api-v3": minor
---

Make `cronJobs.<name>.schedule` optional when `suspend: true` — the template now defaults it to a harmless placeholder in that case, instead of requiring every manual-trigger-only job to set a dummy cron expression by hand. `schedule` is still required (and now fails at `helm template`/`helm lint` time with a clear error, instead of only at `kubectl apply` time) whenever `suspend` is not `true`, since the Kubernetes CronJob API itself always requires a non-empty schedule regardless of `suspend`.
