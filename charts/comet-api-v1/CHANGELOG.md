# comet-api-v1

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
