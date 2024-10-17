# comet-admin-v1

## 1.0.0

### Major Changes

-   0dd1ebb: - BREAKING: Deactivate `autoMountServiceAccountToken` by default

### Minor Changes

-   0dd1ebb: - Don't generate/use image-pull-secrets if none are set
    -   Add support for both tag and hash for images. Hash will be used if no tag is set
    -   Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
    -   Remove default env-variables as they should be set explicitly
    -   Remove cdn-configuration as it made things more complicated than necessary
    -   Add option to add labels to pods

### Patch Changes

-   0dd1ebb: - Add option to disable `automountServiceAccountToken`
    -   Replace template information in `Chart.yaml` with correct information
    -   Fix syntax: Templates resulted in a syntax error when `image.pullSecret` is set.
    -   Change `additionalLabels` variable to `additionalPodLabels` for better understanding
