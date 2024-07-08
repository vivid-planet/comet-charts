---
"comet-api-v1": minor
---

- Enhance security context for all cronjobs
- Enable adding annotations to ingress, such as NGINX Ingress Controller usage
- Support both image tags and hashes, with hashes taking precedence when no tag is specified
- Optimize RAM allocation for api, site, and site-preview to prevent overcommitment
- Skip generating or using image-pull-secrets if none are specified
- Introduce option to include labels for pods
- Mount emptyDir in /tmp directory for api pods
- Modify api init container to directly call db:migrate without npm, and allow for overriding
