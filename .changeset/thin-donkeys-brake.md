---
"comet-ingress-v1": patch
---

Append the zero-scaling middleware to an existing `traefik.ingress.kubernetes.io/router.middlewares` annotation instead of emitting a duplicate key. Previously, when `zeroScaling.enabled` was set and the `annotations` value already contained `traefik.ingress.kubernetes.io/router.middlewares` (e.g. for a project-specific IP allowlist middleware), the rendered ingress contained the key twice and the zero-scaling entry silently replaced the configured one. Now both middlewares are combined into a single comma-separated list, with the zero-scaling middleware appended last.
