# comet-api-v10

## 10.5.1

### Patch Changes

- 3c12af4: Add support for pod labels in cronjob pods

## 10.5.0

### Minor Changes

- dc40958: Revert to executing npm-command for migrations but make them overrideable

### Patch Changes

- 3972f23: Change additionalLabels variable to additionalPodLabels for better understanding

## 10.4.0

### Minor Changes

- c270a4f: Mount emptyDir in /tmp for api pods

## 10.3.0

### Minor Changes

- df5afd3: Add option to add labels to pods

## 10.2.1

### Patch Changes

- 4fb9219: Fix command for api migration

## 10.2.0

### Minor Changes

- 32d94cd: Call db:migrate directly without npm in api init container

## 10.1.3

### Patch Changes

- 3162712: Fix syntax

  Templates resulted in syntax error when having `image.pullSecret` set.

## 10.1.2

### Patch Changes

- 2bdff37: Replace template informations in Chart.yaml with correct informations

## 10.1.1

### Patch Changes

- dc6e49c: Remove entries from values.yaml that are not in use anymore

## 10.1.0

### Minor Changes

- a75103c: Add support for security context for all cronjobs
- 359591d: Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- 3665717: BREAKING: Don't hardcode values in configMaps or secrets and don't generate those if they would be empty. They have to be filled with Values.env or Values.secrets
- 53f344d: Add support for both tag and hash for images. Hash will be used if no tag is set
- 1519604: Don't overcommit ram for api, site and site-preview
- 44246e1: Don't generate/use image-pull-secrets if non are set

### Patch Changes

- 88b99e8: Add support for multiple secrets per deployment
- 7aa804d: Add option to disable automountServiceAccountToken
