# Comet KEDA Chart

## Configuration

The following table lists the configurable parameters of the Comet KEDA chart and their default values.

### General Parameters

| Parameter                                                         | Type   | Default   | Description                                |
| ----------------------------------------------------------------- | ------ | --------- | ------------------------------------------ |
| `service.externalName`                                            | string | `""`      | External name of the service.              |
| `annotations.httpscaledobject.keda.sh/skip-scaledobject-creation` | string | `"false"` | Annotation to skip scaled object creation. |
| `httpScaledObjects`                                               | list   | `[]`      | List of HTTPScaledObject configurations.   |

### HTTPScaledObject Configuration

| Parameter                               | Type   | Description                                 |
| --------------------------------------- | ------ | ------------------------------------------- |
| `hostname`                              | list   | List of hostnames for the HTTPScaledObject. |
| `scaleTargetRef.apiVersion`             | string | API version of the scale target reference.  |
| `scaleTargetRef.kind`                   | string | Kind of the scale target reference.         |
| `scaleTargetRef.name`                   | string | Name of the scale target reference.         |
| `scaleTargetRef.service`                | string | Name of the service to scale.               |
| `scaleTargetRef.port`                   | int    | Port of the service to scale.               |
| `replicas.min`                          | int    | Minimum number of replicas.                 |
| `replicas.max`                          | int    | Maximum number of replicas.                 |
| `scaledownPeriod`                       | int    | Period for scaling down in seconds.         |
| `scalingMetric.requestRate.granularity` | string | Granularity of the request rate metric.     |
| `scalingMetric.requestRate.targetValue` | int    | Target value for the request rate metric.   |
| `scalingMetric.requestRate.window`      | string | Window for the request rate metric.         |

## Example Values File

```yaml
service:
  externalName: "keda-add-ons-http-interceptor-proxy.keda.svc.cluster.local"

annotations:
  httpscaledobject.keda.sh/skip-scaledobject-creation: "false"

httpScaledObjects:
  - hostname: ["admin.comet-dxp.com"]
    scaleTargetRef:
      apiVersion: apps/v1
      kind: Deployment
      name: comet-admin
      service: comet-admin
      port: 3000
    replicas:
      min: 0
      max: 1
    scaledownPeriod: 300
    scalingMetric:
      requestRate:
        granularity: 1s
        targetValue: 100
        window: 1m
```
