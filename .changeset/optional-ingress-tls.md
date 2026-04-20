---
"comet-ingress-v1": minor
---

Make TLS optional per ingress. Set `tls: false` on an ingress entry to create an HTTP-only ingress without a TLS section. Defaults to `true` for backward compatibility.
