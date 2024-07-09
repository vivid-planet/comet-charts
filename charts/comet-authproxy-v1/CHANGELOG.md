# comet-authproxy-v1

## 1.0.0

### Major Changes

- 0dd1ebb: - Migration to Open Source

### Minor Changes

- 0dd1ebb: - Enable active auth-logging in OAuth2-Proxy
  - Extend cookie-refresh duration to 23 hours
  - Set `/api` as the API route, returning HTTP 401 instead of redirecting to idp if the token is not valid
  - Disable redis for authproxy by default
  - Add support for adding annotations to ingress (e.g., for use by NGINX Ingress Controller)

### Patch Changes

- 0dd1ebb: - Update oauthproxy to newest helm chart
  - Replace template informations in Chart.yaml with correct informations
