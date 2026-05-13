# comet-api-v2

## 3.0.0

### Major Changes

-   1db083a: Switch all probes to dedicated `/healthcheck/*` endpoints to reduce noise from health-check requests in monitoring tools (e.g. Sentry false positives that can't be filtered via inbound filters).

    -   `comet-admin-v2`: `/status/health` → `livenessProbe: /healthcheck/live`, `readinessProbe: /healthcheck/ready`
    -   `comet-api-v3`: `/api/status/{liveness,readiness}` → `livenessProbe: /api/healthcheck/live`, `readinessProbe: /healthcheck/ready`, `startupProbe: /api/healthcheck/ready`
    -   `comet-site-v2`: `/api/status` → `livenessProbe: /healthcheck/live`, `readinessProbe: /healthcheck/ready`; prelogin `/login/api/status` → `/login/healthcheck/{live,ready}`
    -   `comet-site-preview-v2`: `/site/api/status` → `livenessProbe: /site/healthcheck/live`, `readinessProbe: /site/healthcheck/ready`

    **Breaking change:** the underlying applications must expose the new endpoints before upgrading, otherwise pods will fail their probes and won't become ready.

## 2.4.0

### Minor Changes

-   37a8fab: Make the application container port configurable via the `containerPorts.http` value (defaults to `3000`, preserving current behavior). Also switch the Ingress backend to reference the Service port by name (`http`) instead of a hardcoded `3000`, so custom `service.port` / `containerPorts.http` values work end-to-end.

## 2.3.0

### Minor Changes

-   b3d23b7: Allow overriding the `comet-dxp.com/instance` label via `instanceNameOverride` value

## 2.2.2

### Patch Changes

-   4b91c23: Only delete migration resources before new hook creation

## 2.2.1

### Patch Changes

-   9aaebec: Prevent deletion of migration secrets/configmap on hook failure

## 2.2.0

### Minor Changes

-   3e5cae4: Allow custom annotations for CronJobs

### Patch Changes

-   2eba5eb: Checksums for ConfigMaps and Secrets were not rendered when `podAnnotations` was empty, preventing automatic pod restarts on config changes. Replaced `{{- with .Values.podAnnotations }}` wrapper with direct `{{- range }}` iteration to ensure checksums are always present regardless of user-defined annotations.

## 2.1.0

### Minor Changes

-   172a260: Add dedicated Secrets and ConfigMap for migration job with auto-cleanup

## 2.0.0

### Major Changes

-   f23b2ab: **BREAKING**: Move migrations from initContainers to Helm migration hook
