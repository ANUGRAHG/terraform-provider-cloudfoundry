---
page_title: "cloudfoundry_app Data Source - terraform-provider-cloudfoundry"
subcategory: ""
description: |-
  Gets information on a Cloud Foundry application.
---

# cloudfoundry_app (Data Source)

Gets information on a Cloud Foundry application.

## Example Usage

```terraform
terraform {
  required_providers {
    cloudfoundry = {
      source = "sap/cloudfoundry"
    }
  }
}
provider "cloudfoundry" {}

data "cloudfoundry_app" "http-bin-server" {
  name  = "tf-test-do-not-delete-http-bin"
  space = "tf-space-1"
  org   = "PerformanceTeamBLR"
}

output "id" {
  value = data.cloudfoundry_app.http-bin-server.id
}

output "space" {
  value = data.cloudfoundry_app.http-bin-server.space
}

output "name" {
  value = data.cloudfoundry_app.http-bin-server.name
}
output "environment" {
  value = data.cloudfoundry_app.http-bin-server.environment
}
output "instances" {
  value = data.cloudfoundry_app.http-bin-server.instances
}
output "memory" {
  value = data.cloudfoundry_app.http-bin-server.memory
}
output "disk_quota" {
  value = data.cloudfoundry_app.http-bin-server.disk_quota
}
output "routes" {
  value = data.cloudfoundry_app.http-bin-server.routes
}
output "buildpacks" {
  value = data.cloudfoundry_app.http-bin-server.buildpacks
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) The name of the application to look up
- `org_name` (String) The name of the associated Cloud Foundry organization to look up
- `space_name` (String) The name of the space to look up

### Read-Only

- `annotations` (Map of String) The annotations associated with Cloud Foundry resources.Add as described [here](https://docs.cloudfoundry.org/adminguide/metadata.html#-view-metadata-for-an-object).
- `buildpacks` (Set of String) Multiple buildpacks used to stage the application.
- `command` (String) A custom start command for the application. This overrides the start command provided by the buildpack.
- `created_at` (String) The date and time when the resource was created in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format.
- `disk_quota` (String) The disk space to be allocated for each application instance.
- `docker_credentials` (Attributes) Defines login credentials for private docker repositories (see [below for nested schema](#nestedatt--docker_credentials))
- `docker_image` (String) The URL to the docker image with tag
- `environment` (Map of String) Key/value pairs of custom environment variables in your app. Does not include any system or service variables.
- `health_check_http_endpoint` (String) The endpoint for the http health check type.
- `health_check_interval` (Number) The interval in seconds between health checks.
- `health_check_invocation_timeout` (Number) The timeout in seconds for the health check requests for http and port health checks.
- `health_check_type` (String) The health check type which can be one of 'port', 'process', 'http'.
- `id` (String) The GUID of the object.
- `instances` (Number) The number of app instances that you want to start. Defaults to 1.
- `labels` (Map of String) The labels associated with Cloud Foundry resources. Add as described [here](https://docs.cloudfoundry.org/adminguide/metadata.html#-view-metadata-for-an-object).
- `log_rate_limit_per_second` (String) The attribute specifies the log rate limit for all instances of an app.
- `memory` (String) The memory limit for each application instance. If not provided, value is computed and retreived from Cloud Foundry.
- `processes` (Attributes Set) List of configurations for individual process types. (see [below for nested schema](#nestedatt--processes))
- `readiness_health_check_http_endpoint` (String) The endpoint for the http readiness health check type.
- `readiness_health_check_interval` (Number) The interval in seconds between readiness health checks.
- `readiness_health_check_invocation_timeout` (Number) The timeout in seconds for the readiness health check requests for http and port health checks.
- `readiness_health_check_type` (String) The readiness health check type which can be one of 'port', 'process', 'http'.
- `routes` (Attributes Set) The routes to map to the application to control its ingress traffic. (see [below for nested schema](#nestedatt--routes))
- `service_bindings` (Attributes Set) Service instances bound to the application. (see [below for nested schema](#nestedatt--service_bindings))
- `sidecars` (Attributes Set) The attribute specifies additional processes to run in the same container as your app (see [below for nested schema](#nestedatt--sidecars))
- `stack` (String) The name of the stack the application will be deployed to.
- `timeout` (Number) Defines the number of seconds that Cloud Foundry allocates for starting your app.
- `updated_at` (String) The date and time when the resource was updated in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format.

<a id="nestedatt--docker_credentials"></a>
### Nested Schema for `docker_credentials`

Read-Only:

- `username` (String, Sensitive) The username for the private docker repository.


<a id="nestedatt--processes"></a>
### Nested Schema for `processes`

Read-Only:

- `command` (String) A custom start command for the application. This overrides the start command provided by the buildpack.
- `disk_quota` (String) The disk space to be allocated for each application instance.
- `health_check_http_endpoint` (String) The endpoint for the http health check type.
- `health_check_interval` (Number) The interval in seconds between health checks.
- `health_check_invocation_timeout` (Number) The timeout in seconds for the health check requests for http and port health checks.
- `health_check_type` (String) The health check type which can be one of 'port', 'process', 'http'.
- `instances` (Number) The number of app instances that you want to start. Defaults to 1.
- `log_rate_limit_per_second` (String) The attribute specifies the log rate limit for all instances of an app.
- `memory` (String) The memory limit for each application instance. If not provided, value is computed and retreived from Cloud Foundry.
- `readiness_health_check_http_endpoint` (String) The endpoint for the http readiness health check type.
- `readiness_health_check_interval` (Number) The interval in seconds between readiness health checks.
- `readiness_health_check_invocation_timeout` (Number) The timeout in seconds for the readiness health check requests for http and port health checks.
- `readiness_health_check_type` (String) The readiness health check type which can be one of 'port', 'process', 'http'.
- `timeout` (Number) Defines the number of seconds that Cloud Foundry allocates for starting your app.
- `type` (String) The process type. Can be web or worker.


<a id="nestedatt--routes"></a>
### Nested Schema for `routes`

Read-Only:

- `protocol` (String) The protocol used for the route. Valid values are http2, http1, and tcp.
- `route` (String) The fully route qualified domain name which will be bound to app


<a id="nestedatt--service_bindings"></a>
### Nested Schema for `service_bindings`

Read-Only:

- `params` (Map of String) A map of arbitrary key/value pairs to send to the service broker during binding.
- `service_instance` (String) The service instance name.


<a id="nestedatt--sidecars"></a>
### Nested Schema for `sidecars`

Read-Only:

- `command` (String) The command used to start the sidecar.
- `memory` (String) The memory limit for the sidecar.
- `name` (String) Sidecar name. The identifier for the sidecars to be configured.
- `process_types` (Set of String) List of processes to associate sidecar with.