---
"comet-api-v3": minor
---

Make the size limit of the `/tmp` emptyDir configurable via `tmpVolume.sizeLimit` (default: `1Gi`, as before), e.g. to allow temporary files of large DAM uploads
