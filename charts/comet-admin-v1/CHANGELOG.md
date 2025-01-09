# comet-admin-v1

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

-   190295a: Add app label to api and admin charts to match the existing label configuration

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
