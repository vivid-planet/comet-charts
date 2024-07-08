---
"comet-site-v1": minor
---

- Add support for security context for all cronjobs
- Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- Add support for both tag and hash for images. Hash will be used if no tag is set
- Don't overcommit ram for api, site and site-preview
- Don't generate/use image-pull-secrets if non are set
- Replace npm with direct call for site init container
- Add option to add labels to pods
- Mount emptyDir in .next for building
- Tar the finished build directly in the /mnt path and not in the current dir
- Allow additionalPodLabels for SSG Builder Cronjob
- Use emptyDir for kubectl rollout command after SSG build
- Add compatibility for readonly systems by extracting ssg build in emptyDir tmp folder
- Set automountServiceAccountToken for builder independend of setting for site
