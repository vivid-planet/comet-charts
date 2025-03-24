# comet-api-v1

## 1.10.0

### Minor Changes

-   ea7c2b6: Manually create and mount service account secrets in cron jobs for api and site

## 1.9.0

### Minor Changes

-   392d614: Add startupProbe to comet-api instead of delaying livenessProbe
-   2af58fc: Use readiness instead liveness for api probes
-   c24e25d: Manually created a service account, service account secret and mounted the secret instead of using `autoMountServiceAccountToken`.

## 1.8.0

### Minor Changes

-   740071c: Add timeZone configuration to cronjobs definition

## 1.7.0

### Minor Changes

-   e0fc0ee: Add configuration to expose metrics port for services

## 1.6.1

### Patch Changes

-   de5da4d: Allow override of resources for init container

## 1.6.0

### Minor Changes

-   41235fb: feat: add checksum annotations for auto-rollout on ConfigMap and Secret updates in Deployment templates

## 1.5.0

### Minor Changes

-   Add configuration to expose metrics port

## 1.4.0

### Minor Changes

-   Split selectorLabels into selectorLabels and selectorMatchLabels in comet-admin, comet-api and comet-site templates to modify pod labels without using additionalPodLabels parameter and without changing the matchLabels section

## 1.3.0

### Minor Changes

-   190295a: Add app label to api and admin charts to match the existing label configuration

## 1.2.1

### Patch Changes

-   6a2c283: Rename comet-api RoleBinding to avoid conflict with existing RoleBinding due to roleRef changes

## 1.2.0

### Minor Changes

-   b53cfa1: Create a Role to enforce least privilege for the ServiceAccount

## 1.1.0

### Minor Changes

-   568bfff: allow custom env variables per cronjob

## 1.0.1

### Patch Changes

-   d07eb54: Fix schedule for blck-indx-mgrt-blks job to really never run

## 1.0.0

### Major Changes

-   0dd1ebb: - **BREAKING**: Avoid hardcoding values in configMaps or secrets and only generate them if they are not empty. Use `Values.env` or `Values.secrets` to populate them.
    -   **BREAKING**: Disable the builder cronjob by default.

### Minor Changes

-   0dd1ebb: - Enhance security context for all cronjobs
    -   Enable adding annotations to ingress, such as NGINX Ingress Controller usage
    -   Support both image tags and hashes, with hashes taking precedence when no tag is specified
    -   Optimize RAM allocation for API, site, and site-preview to prevent overcommitment
    -   Skip generating or using image-pull-secrets if none are specified
    -   Introduce option to include labels for pods
    -   Mount emptyDir in `/tmp` directory for api pods
    -   Modify api init container to directly call `db:migrate` without npm, and allow for overwriting

### Patch Changes

-   0dd1ebb: - Add support for multiple secrets per deployment
    -   Add option to disable automountServiceAccountToken
    -   Remove entries from values.yaml that are not in use anymore
    -   Replace template information in Chart.yaml with correct information
    -   Fix syntax: Templates resulted in syntax error when `image.pullSecret` is set.
    -   Change `additionalLabels` variable to `additionalPodLabels` for better understanding
    -   Add support for pod labels in cronjob pods
