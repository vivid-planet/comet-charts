# comet-ingress-v1

## 1.3.0

### Minor Changes

-   4fb9365: Add `zeroScaling` values block for scale-to-zero support via [Sablier](https://sablierapp.dev/). When `zeroScaling.enabled` is set, the chart renders a Traefik middleware using the Sablier plugin (dynamic strategy with waiting page) and attaches it to all ingresses via the `traefik.ingress.kubernetes.io/router.middlewares` annotation, so incoming requests start the deployments of the configured Sablier group on demand. The group defaults to the release namespace; `sablierUrl`, `sessionDuration`, `failOpen`, `ignoreUserAgent` and the waiting page title are configurable.

## 1.2.0

### Minor Changes

-   5b7ce28: Make the http section optional per ingress entry. When `service` is omitted, the entire `http` block is skipped — only the host rule and TLS section are rendered. This is required because Kubernetes rejects path entries without a backend. TLS remains enabled; when no service is configured the `secretName` defaults to `<fullname>-<index>-cert` instead of `<service.name>-cert`.

    This allows using the ingress solely for TLS certificate provisioning via cert-manager, without routing any traffic to a backend service.

## 1.1.0

### Minor Changes

-   5449980: Make TLS optional per ingress. Set `tls: false` on an ingress entry to create an HTTP-only ingress without a TLS section. Defaults to `true` for backward compatibility.

## 1.0.1

### Patch Changes

-   22a8ad3: Every host needs its own cert for tls

## 1.0.0

### Major Changes

-   6ae395f: Add `comet-ingress` chart

    Provides a centralized configuration for ingresses to avoid confusion on which ingress should point to which service.
