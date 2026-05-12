# comet-site-preview-v1

## 2.0.0

### Major Changes

-   1db083a: Switch all probes to dedicated `/healthcheck/*` endpoints to reduce noise from health-check requests in monitoring tools (e.g. Sentry false positives that can't be filtered via inbound filters).

    -   `comet-admin-v2`: `/status/health` → `livenessProbe: /healthcheck/live`, `readinessProbe: /healthcheck/ready`
    -   `comet-api-v3`: `/api/status/{liveness,readiness}` → `livenessProbe: /api/healthcheck/live`, `readinessProbe: /healthcheck/ready`, `startupProbe: /api/healthcheck/ready`
    -   `comet-site-v2`: `/api/status` → `livenessProbe: /healthcheck/live`, `readinessProbe: /healthcheck/ready`; prelogin `/login/api/status` → `/login/healthcheck/{live,ready}`
    -   `comet-site-preview-v2`: `/site/api/status` → `livenessProbe: /site/healthcheck/live`, `readinessProbe: /site/healthcheck/ready`

    **Breaking change:** the underlying applications must expose the new endpoints before upgrading, otherwise pods will fail their probes and won't become ready.

## 1.2.0

### Minor Changes

-   d337b44: Increase CPU limit from 1 to 2

## 1.1.0

### Minor Changes

-   41235fb: feat: add checksum annotations for auto-rollout on ConfigMap and Secret updates in Deployment templates

## 1.0.1

### Patch Changes

-   4662d93: Remove dash after if to fix yaml formatting

## 1.0.0

### Major Changes

-   0dd1ebb: - **BREAKING**: Avoid hardcoding values in configMaps or secrets and only generate them if they are not empty. Use `Values.env` or `Values.secrets` to fill them.
    -   **BREAKING**: Disable `autoMountServiceAccountToken` by default.

### Minor Changes

-   0dd1ebb: - Add support for both tag and hash for images. Hash will be used if no tag is set.
    -   Avoid excessive RAM usage for API, site, and site-preview.
    -   Skip generating or using image-pull-secrets if none are set.
    -   Replace the npm command with a direct call for site-preview build.
    -   Introduce an option to add labels to pods.

### Patch Changes

-   0dd1ebb: - Add support for multiple secrets per deployment
    -   Add option to disable automountServiceAccountToken
    -   Remove entries from values.yaml that are not in use anymore
    -   Replace template information in Chart.yaml with correct information
    -   Change additionalLabels variable to additionalPodLabels for better understanding
