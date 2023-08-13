module "components" {
  source   = "git::https://github.com/vyshuvenu/basic-tf-module-test.git"
  for_each = var.components

  zone_id             = var.zone_id
  security_groups     = var.security_groups
  name                = each.value["name"]
  instance_type       = each.value["instance_type"]
}