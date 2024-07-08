---
"comet-api-v1": minor
---

- Add support for security context for all cronjobs
- Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- Add support for both tag and hash for images. Hash will be used if no tag is set
- Don't overcommit ram for api, site and site-preview
- Don't generate/use image-pull-secrets if non are set
- Add option to add labels to pods
- Mount emptyDir in /tmp for api pods
- Call db:migrate directly without npm in api init container and make it overrideable
