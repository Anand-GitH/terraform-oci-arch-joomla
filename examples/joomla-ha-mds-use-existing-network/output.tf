## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

output "joomla_home_URL" {
  value = "http://${module.joomla.public_ip[0]}/"
}

output "generated_ssh_private_key" {
  value     = module.joomla.generated_ssh_private_key
  sensitive = true
}

output "joomla_name" {
  value = var.joomla_name
}

output "joomla_password" {
  value = var.joomla_password
}

output "joomla_database" {
  value = var.joomla_schema
}

output "mds_instance_ip" {
  value = module.mds-instance.mysql_db_system.ip_address
  sensitive = true
}