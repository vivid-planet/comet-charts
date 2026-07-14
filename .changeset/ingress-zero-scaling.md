---
"comet-ingress-v1": minor
---

Add `zeroScaling` values block for scale-to-zero support via [Sablier](https://sablierapp.dev/). When `zeroScaling.enabled` is set, the chart renders a Traefik middleware using the Sablier plugin (dynamic strategy with waiting page) and attaches it to all ingresses via the `traefik.ingress.kubernetes.io/router.middlewares` annotation, so incoming requests start the deployments of the configured Sablier group on demand. The group defaults to the release namespace; `sablierUrl`, `sessionDuration`, `failOpen`, `ignoreUserAgent` and the waiting page title are configurable.
