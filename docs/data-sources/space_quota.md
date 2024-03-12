---
page_title: "cloudfoundry_space_quota Data Source - terraform-provider-cloudfoundry"
subcategory: ""
description: |-
  Gets information on a Cloud Foundry space quota.
---

# cloudfoundry_space_quota (Data Source)

Gets information on a Cloud Foundry space quota.

## Example Usage

```terraform
data "cloudfoundry_space_quota" "my_space_quota" {
  name = "tf-test-do-not-delete"
  org  = "ca721b24-e24d-4171-83e1-1ef6bd836b38"
}

output "id" {
  value = data.cloudfoundry_space_quota.my_space_quota.id
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) The name of the space quota to look up

### Optional

- `org` (String) The ID of the Org within which to find the space quota

### Read-Only

- `allow_paid_service_plans` (Boolean) Determines whether users can provision instances of non-free service plans. Does not control plan visibility. When false, non-free service plans may be visible in the marketplace but instances can not be provisioned.
- `created_at` (String) The date and time when the resource was created in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format.
- `id` (String) The GUID of the object.
- `instance_memory` (Number) Maximum memory per application instance
- `spaces` (Set of String) Set of Space GUIDs to which this space quota would be assigned.
- `total_app_instances` (Number) Maximum app instances allowed
- `total_app_log_rate_limit` (Number) Maximum log rate allowed for all the started processes and running tasks in bytes/second.
- `total_app_tasks` (Number) Maximum tasks allowed per app
- `total_memory` (Number) Maximum memory usage allowed
- `total_route_ports` (Number) Maximum routes with reserved ports
- `total_routes` (Number) Maximum routes allowed
- `total_service_keys` (Number) Maximum service keys allowed
- `total_services` (Number) Maximum services allowed
- `updated_at` (String) The date and time when the resource was updated in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format.