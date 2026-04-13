---
"comet-api-v1": minor
"comet-api-v2": minor
---

Make the application container port configurable via the `containerPorts.http` value (defaults to `3000`, preserving current behavior). Also switch the Ingress backend to reference the Service port by name (`http`) instead of a hardcoded `3000`, so custom `service.port` / `containerPorts.http` values work end-to-end.
