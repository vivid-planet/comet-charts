# comet-site-v1

## 1.9.1

### Patch Changes

-   7221731: Fix server host for deployed envs

## 1.9.0

### Minor Changes

-   d337b44: Increase CPU limit from 1 to 2

## 1.8.0

### Minor Changes

-   ea7c2b6: Manually create and mount service account secrets in cron jobs for api and site

## 1.7.0

### Minor Changes

-   998ae6e: Add serviceAccountName configuration to site deployment

## 1.6.1

### Patch Changes

-   4ccd534: Added missing {{- end }} to properly close the `with` block in the ServiceAccount template

## 1.6.0

### Minor Changes

-   7d6e5db: Add sessionAffinity to site-service

    Solves this problem:

    -   During a pending upgrade two pods with two different versions (old and new) exist in parallel
    -   The client makes a page request and is routed to the new pod
    -   The returned HTML embeds links for assets to load
    -   The client then makes requests to load these assets
    -   The problem arises when these following requests are routed to the old pod, which answers with a 404

    This changes reserves a 30 second time window where all subsequent requests within this time window are routed to the same pod.

    Additional note: the opposite way (HTML comes from the old pod but subsequent requests are routed to the
    new one because the old one does not exist anymore) is mitigated by caching the old assets in the CDN.

-   c24e25d: Manually created a service account, service account secret and mounted the secret instead of using `autoMountServiceAccountToken`.

## 1.5.0

### Minor Changes

-   e0fc0ee: Add configuration to expose metrics port for services

## 1.4.0

### Minor Changes

-   41235fb: feat: add checksum annotations for auto-rollout on ConfigMap and Secret updates in Deployment templates

## 1.3.0

### Minor Changes

-   Add configuration to expose metrics port

## 1.2.0

### Minor Changes

-   Split selectorLabels into selectorLabels and selectorMatchLabels in comet-admin, comet-api and comet-site templates to modify pod labels without using additionalPodLabels parameter and without changing the matchLabels section

## 1.1.0

### Minor Changes

-   76c35bb: Add option to mount .next folder as emptyDir

## 1.0.3

### Patch Changes

-   d080998: Fix document-root mount if builder is not enabled

## 1.0.2

### Patch Changes

-   67ee4af: Only render additional pvc labels, if there are any

## 1.0.1

### Patch Changes

-   4662d93: Remove dash after if to fix yaml formatting

## 1.0.0

### Major Changes

-   0dd1ebb: - **BREAKING**: Avoid hardcoding values in `configMaps`, `secrets`, `prelogin secrets`, or `prelogin envs`. Instead, use `Values.env`, `Values.secrets`, `Values.prelogin.secrets`, or `Values.prelogin.env` to fill them.
    -   **BREAKING**: Disable `autoMountServiceAccountToken` by default, except for the `builder`.
    -   **BREAKING**: Deactivate `builder` by default.

### Minor Changes

-   0dd1ebb: - Add support for security context for all cronjobs
    -   Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
    -   Add support for both tag and hash for images. Hash will be used if no tag is set
    -   Don't overcommit RAM for api, site and site-preview
    -   Don't generate/use image-pull-secrets if none are set
    -   Replace npm with direct call for site init container
    -   Add option to add labels to pods
    -   Mount emptyDir in `.next` for building
    -   Tar the finished build directly in the /mnt path and not in the current dir
    -   Allow `additionalPodLabels` for SSG Builder Cronjob
    -   Use emptyDir for kubectl rollout command after SSG build
    -   Add compatibility for readonly systems by extracting SSG build in emptyDir tmp folder
    -   Set automountServiceAccountToken for builder independent of setting for site

### Patch Changes

-   0dd1ebb: - Add support for multiple secrets per deployment
    -   Only use pullsecret for site if present
    -   Add option to disable automountServiceAccountToken
    -   Add support for additional labels for site pvc
    -   Remove entries from values.yaml that are not in use anymore
    -   Replace template information in Chart.yaml with correct information
    -   Add selectorLabels to build cronjob
    -   Change additionalLabels variable to additionalPodLabels for better understanding
    -   Set additionalPodLabels at correct space
    -   Fix path for source of rsync
    -   Change list syntax of prelogin envs
