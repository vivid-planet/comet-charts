# comet-api-v9

## 9.1.1

### Patch Changes

- dc6e49c: Remove entries from values.yaml that are not in use anymore

## 9.1.0

### Minor Changes

- a75103c: Add support for security context for all cronjobs
- 580698d: Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- 3665717: BREAKING: Don't hardcode values in configMaps or secrets and don't generate those if they would be empty. They have to be filled with Values.env or Values.secrets
- 53f344d: Add support for both tag and hash for images. Hash will be used if no tag is set
- 1519604: Don't overcommit ram for api, site and site-preview
- 44246e1: Don't generate/use image-pull-secrets if non are set

### Patch Changes

- 7aa804d: Add option to disable automountServiceAccountToken
