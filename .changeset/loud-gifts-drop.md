---
"comet-admin-v1": minor
---

- Don't generate/use image-pull-secrets if non are set
- Add support for both tag and hash for images. Hash will be used if no tag is set
- Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- Remove default env-variables as they should be set explicitly
- Remove cdn-configuration as it made things more complicated than necessary
- Add option to add labels to pods
