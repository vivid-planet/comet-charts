# comet-api-v2

## 2.2.0

### Minor Changes

-   3e5cae4: Allow custom annotations for CronJobs

### Patch Changes

-   2eba5eb: Checksums for ConfigMaps and Secrets were not rendered when `podAnnotations` was empty, preventing automatic pod restarts on config changes. Replaced `{{- with .Values.podAnnotations }}` wrapper with direct `{{- range }}` iteration to ensure checksums are always present regardless of user-defined annotations.

## 2.1.0

### Minor Changes

-   172a260: Add dedicated Secrets and ConfigMap for migration job with auto-cleanup

## 2.0.0

### Major Changes

-   f23b2ab: **BREAKING**: Move migrations from initContainers to Helm migration hook
