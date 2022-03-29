## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

output "joomla_home_URL" {
  value = "http://${module.oci-arch-joomla.public_ip[0]}/"
}

output "joomla_administrator_URL" {
  value = "http://${module.oci-arch-joomla.public_ip[0]}/administrator/"
}

output "generated_ssh_private_key" {
  value     = module.oci-arch-joomla.generated_ssh_private_key
  sensitive = true
}

output "generated_ssh_public_key" {
  value     = module.oci-arch-joomla.generated_ssh_public_key
  sensitive = true
}

output "joomla_admin" {
  value = "admin"
}

output "joomla_admin_password" {
  value = var.joomla_password
}

output "mds_instance_ip" {
  value = module.mds-instance.mysql_db_system.ip_address
  sensitive = true
}