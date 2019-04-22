# Web App Chart

A Chart for a basic web app.

## Available Values

Value | Description | Required | Default
---|---|---|---
`env` | An array of objects with a `name` field and either a `value` field or a `secret` field. If you specify a `value`, the literal value will be set as an environmental variable. If you specify a `secret`, it should follow the same format as a `secretKeyRef`. | No | `[]`
`extra_configs` | Any additional Kubernetes resources that should be bundled along with the release of the app. Use `---` to separate mutliple YAML objects. | No | `{}`
`health.grace` | The number seconds to wait before attempting health checks. This maps to `initialDelaySeconds` in both the readiness and liveness probes. | No | `3`
`health.interval` | The number of seconds in between health check attempts. This maps to `periodSeconds` in both the readiness and liveness probes. | No | `3`
`health.path` | The path that will be hit to perform health checks. This will apply to both the readiness and liveness probes. | Yes | N/A
`health.timeout` | The number of seconds to wait for a response before declaring the check unhealthy. This maps to `timeoutSeconds` in both the readiness and liveness probes. | No | `1`
`host` | This will be used as the `host` property on the Ingress object. This is not required if `public` is `false`. | No | N/A
`image.repo` | The fully qualified container image name. | Yes | N/A
`image.tag` | The tag of the container image that you want to pull. **Note:** This is usually not set in a `values.yaml`, but instead, it is specified during an upgrade with `--set-string`. | Yes | N/A
`name` | The name of the app. This can be different from the name of the Helm release e.g. the Helm release could be called `backend-staging`, but the `name` could be called `backend`. This will be used as the `name` of all of the created objects. | Yes | N/A
`port` | The port than your container will be listening on and traffic should be forwarded to. | Yes | N/A
`public` | This is used to determine whether to create an Ingress object or not. | No | `false`
`resources.limits.cpu` | The maximum amount of CPU that this Pod should be able to use. | No | N/A
`resources.limits.memory` | The maximum amount of memory that this Pod should be able to use. | No | N/A
`resources.requests.cpu` | The required amount of CPU that this Pod needs to be able to run. | Yes | N/A
`resources.requests.memory` | The required amount of memory that this Pod needs to be able to run. | Yes | N/A
