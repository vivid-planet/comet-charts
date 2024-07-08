---
"comet-authproxy-v1": minor
---

- Enable active auth-logging in OAuth2-Proxy
- Extend cookie-refresh duration to 23 hours
- Set `/api` as the API route, returning HTTP 401 instead of redirecting to idp if the token is not valid
- Disable redis for authproxy by default
- Add support for adding annotations to ingress (e.g., for use by NGINX Ingress Controller)
