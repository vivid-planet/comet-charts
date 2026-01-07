---
"comet-api-v1": minor
"comet-api-v2": minor
---

Checksums for ConfigMaps and Secrets were not rendered when `podAnnotations` was empty, preventing automatic pod restarts on config changes. Replaced `{{- with .Values.podAnnotations }}` wrapper with direct `{{- range }}` iteration to ensure checksums are always present regardless of user-defined annotations.
