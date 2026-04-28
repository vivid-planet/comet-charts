---
"comet-ingress-v1": minor
---

Make the http section optional per ingress entry. When `service` is omitted, the entire `http` block is skipped — only the host rule and TLS section are rendered. This is required because Kubernetes rejects path entries without a backend. TLS remains enabled; when no service is configured the `secretName` defaults to `<fullname>-<index>-cert` instead of `<service.name>-cert`.

This allows using the ingress solely for TLS certificate provisioning via cert-manager, without routing any traffic to a backend service.
