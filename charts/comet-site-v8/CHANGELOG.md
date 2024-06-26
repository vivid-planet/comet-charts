# comet-site-v8

## 8.9.1

### Patch Changes

- fe2e10b: Change list syntax of prelogin envs

## 8.9.0

### Minor Changes

- d540ccd: BREAKING: Don't hardcode env values for prelogin deployment. Have to be filled out with Values.prelogin.env

## 8.8.0

### Minor Changes

- da472ad: Set automountServiceAccountToken for builder independend of setting for site

## 8.7.0

### Minor Changes

- 72aa86a: Add compatibility for readonly systems by extracting ssg build in emptyDir tmp folder

### Patch Changes

- bde7dac: Fix path for source of rsync

## 8.6.1

### Patch Changes

- ad02d5d: Set additionalPodLabels at correct space

## 8.6.0

### Minor Changes

- f4fa4c6: Allow additionalPodLabels for SSG Builder Cronjob
- c213e4b: Use emptyDir for kubectl rollout command after SSG build

## 8.5.0

### Minor Changes

- fa91cb3: Tar the finished build directly in the /mnt path and not in the current dir

## 8.4.2

### Patch Changes

- 3972f23: Change additionalLabels variable to additionalPodLabels for better understanding

## 8.4.1

### Patch Changes

- c39c8dd: Add selectorLables to build cronjob

## 8.4.0

### Minor Changes

- 712db85: Mount emptyDir in .next for building
- b31ec43: BREAKING: Don't hardcode values in prelogin secret and don't generate it if it would be empty. They have to be filled with Values.prelogin.secrets

## 8.3.0

### Minor Changes

- df5afd3: Add option to add labels to pods

## 8.2.0

### Minor Changes

- 6fba71a: Replace npm with direct call for site init container

## 8.1.2

### Patch Changes

- 2bdff37: Replace template informations in Chart.yaml with correct informations

## 8.1.1

### Patch Changes

- dc6e49c: Remove entries from values.yaml that are not in use anymore

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
