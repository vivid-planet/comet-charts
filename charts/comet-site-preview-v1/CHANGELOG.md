# comet-site-preview-v1

## 1.4.0

### Minor Changes

-   d23ea8e: Add `additionalDeploymentAnnotations` value to set custom annotations on the Deployment metadata. Complements `additionalDeploymentLabels` for values that are not valid as labels (e.g. `sablier.running-hours: "09:00-17:00"`).

## 1.3.0

### Minor Changes

-   6394740: Add `additionalDeploymentLabels` value to set custom labels on the Deployment metadata (e.g. `sablier.enable`/`sablier.group`)

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
