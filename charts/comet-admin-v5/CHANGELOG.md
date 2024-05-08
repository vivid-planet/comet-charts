# comet-admin-v5

## 5.2.0

### Minor Changes

- 9f58343: Simplify chart

  - Remove default env-variables as they should be set explicitly
  - Remove cdn-configuration as it made things more complicated than necessary

### Patch Changes

- 3162712: Fix syntax

  Templates resulted in syntax error when having `image.pullSecret` set.

## 5.1.1

### Patch Changes

- 2bdff37: Replace template informations in Chart.yaml with correct informations

## 5.1.0

### Minor Changes

- f103e08: Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- 53f344d: Add support for both tag and hash for images. Hash will be used if no tag is set
- 44246e1: Don't generate/use image-pull-secrets if non are set

### Patch Changes

- 7aa804d: Add option to disable automountServiceAccountToken
