# comet-site-v8

## 8.1.0

### Minor Changes

- a75103c: Add support for security context for all cronjobs
- 151f9c1: Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- 3665717: BREAKING: Don't hardcode values in configMaps or secrets and don't generate those if they would be empty. They have to be filled with Values.env or Values.secrets
- 53f344d: Add support for both tag and hash for images. Hash will be used if no tag is set
- 1519604: Don't overcommit ram for api, site and site-preview
- 44246e1: Don't generate/use image-pull-secrets if non are set

### Patch Changes

- 88b99e8: Add support for multiple secrets per deployment
- c72b579: Only use pullsecret for site if present
- 7aa804d: Add option to disable automountServiceAccountToken
- 7dab88a: Add support for additional labels for site pvc