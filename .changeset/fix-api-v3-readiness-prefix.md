---
"comet-api-v3": patch
---

Fix `readinessProbe.httpGet.path` in `comet-api-v3` — was `/healthcheck/ready`, but the NestJS app uses the global `api` prefix, so the correct path is `/api/healthcheck/ready` (matching `livenessProbe` and `startupProbe`). The previous value caused readiness probes to return 404 and pods never became ready.
