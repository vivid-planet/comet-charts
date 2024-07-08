---
"comet-site-preview-v1": minor
---

- Add support for both tag and hash for images. Hash will be used if no tag is set.
- Avoid excessive RAM usage for API, site, and site-preview.
- Skip generating or using image-pull-secrets if none are set.
- Replace the npm command with a direct call for site-preview build.
- Introduce an option to add labels to pods.
