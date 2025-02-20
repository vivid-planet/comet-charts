---
"comet-site-v1": minor
---

Add sessionAffinity to site-service

Solves this problem:

-   During a pending upgrade two pods with two different versions (old and new) exist in parallel
-   The client makes a page request and is routed to the new pod
-   The returned HTML embeds links for assets to load
-   The client then makes requests to load these assets
-   The problem arises when these following requests are routed to the old pod, which answers with a 404

This changes reserves a 30 second time window where all subsequent requests within this time window are routed to the same pod.

Additional note: the opposite way (HTML comes from the old pod but subsequent requests are routed to the
new one because the old one does not exist anymore) is mitigated by caching the old assets in the CDN.
