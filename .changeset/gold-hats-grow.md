---
"comet-site-preview-v2": major
"comet-admin-v2": major
"comet-site-v2": major
"comet-api-v3": major
---

Switch all probes to dedicated `/healthcheck/*` endpoints to reduce noise from health-check requests in monitoring tools (e.g. Sentry false positives that can't be filtered via inbound filters).

-   `comet-admin-v2`: `/status/health` → `livenessProbe: /healthcheck/live`, `readinessProbe: /healthcheck/ready`
-   `comet-api-v3`: `/api/status/{liveness,readiness}` → `livenessProbe: /api/healthcheck/live`, `readinessProbe: /healthcheck/ready`, `startupProbe: /api/healthcheck/ready`
-   `comet-site-v2`: `/api/status` → `livenessProbe: /healthcheck/live`, `readinessProbe: /healthcheck/ready`; prelogin `/login/api/status` → `/login/healthcheck/{live,ready}`
-   `comet-site-preview-v2`: `/site/api/status` → `livenessProbe: /site/healthcheck/live`, `readinessProbe: /site/healthcheck/ready`

**Breaking change:** the underlying applications must expose the new endpoints before upgrading, otherwise pods will fail their probes and won't become ready.
