# comet-site-preview-v2

## 2.2.0

### Minor Changes

- b6f9d13: Replace npm command with direct call for site-preview build

## 2.1.2

### Patch Changes

- 2bdff37: Replace template informations in Chart.yaml with correct informations

## 2.1.1

### Patch Changes

- dc6e49c: Remove entries from values.yaml that are not in use anymore

## 2.1.0

### Minor Changes

- 3665717: BREAKING: Don't hardcode values in configMaps or secrets and don't generate those if they would be empty. They have to be filled with Values.env or Values.secrets
- 53f344d: Add support for both tag and hash for images. Hash will be used if no tag is set
- 1519604: Don't overcommit ram for api, site and site-preview
- 44246e1: Don't generate/use image-pull-secrets if non are set

### Patch Changes

- 88b99e8: Add support for multiple secrets per deployment
- 7aa804d: Add option to disable automountServiceAccountToken
