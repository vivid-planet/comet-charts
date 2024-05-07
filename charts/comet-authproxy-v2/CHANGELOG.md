# comet-authproxy-v2

## 2.3.1

### Patch Changes

- 2bdff37: Replace template informations in Chart.yaml with correct informations

## 2.3.0

### Minor Changes

- 8476324: Add possibility to add annotations to ingress (e.g. in use by NGINX Ingress Controller)
- c246b43: Disable redis for authproxy as default

### Patch Changes

- 6499848: Update oauthproxy to newest helm chart

## 2.2.0

### Minor Changes

- 45cdef8: Active auth-logging in OAuth2-Proxy
- 3c4e0ea: Increase cookie-refresh to 23h
- 791bc2a: Use `/api` as API-Route (return HTTP 401 instead of redirecting to idp if token is not valid)
