resource "cloudfoundry_role" "my_role" {
  user = "space"
  type = "organization_user"
  org  = "ca721b24-e24d-4171-83e1-1ef6bd836b38"

}