---
"comet-site-v2": patch
---

**Breaking change** (retroactively added after the `comet-site-v2` major release): Remove `prelogin` from `comet-site-v2`. The templates `prelogin-deployment.yml`, `prelogin-service.yml` and `prelogin-secret.yaml`, the corresponding block in `values.yaml`, and the prelogin helpers in `_helpers.tpl` have been removed. `main-ingress.yaml` and `route.yaml` now always route to the site service on port 3000.

This should have shipped with the `2.0.0` major bump but was missed — hence the patch with this breaking note.

**Migration:** Consumers must clean up their `values.yaml` — any `prelogin.*` values have no effect and should be removed. If you still rely on the prelogin, use a dedicated chart for it instead.
