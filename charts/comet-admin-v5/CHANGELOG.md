# comet-admin-v5

## 5.1.0

### Minor Changes

- f103e08: Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- 53f344d: Add support for both tag and hash for images. Hash will be used if no tag is set
- 44246e1: Don't generate/use image-pull-secrets if non are set

### Patch Changes

- 7aa804d: Add option to disable automountServiceAccountToken
