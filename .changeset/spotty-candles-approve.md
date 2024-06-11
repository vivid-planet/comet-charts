---
"comet-authproxy-v2": minor
---

Active auth-logging in OAuth2-Proxy
Increase cookie-refresh to 23h
Use `/api` as API-Route (return HTTP 401 instead of redirecting to idp if token is not valid)
Disable redis for authproxy as default
Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
