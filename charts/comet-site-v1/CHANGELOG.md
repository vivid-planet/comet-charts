# comet-site-v1

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
