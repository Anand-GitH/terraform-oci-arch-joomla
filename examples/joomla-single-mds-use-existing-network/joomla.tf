## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

module "oci-arch-joomla" {
  source                    = "github.com/oracle-devrel/terraform-oci-arch-joomla"
  tenancy_ocid              = var.tenancy_ocid
  vcn_id                    = oci_core_virtual_network.joomla_mds_vcn.id
  numberOfNodes             = 1
  availability_domain_name  = var.availability_domain_name == "" ? lookup(data.oci_identity_availability_domains.ADs.availability_domains[0], "name") : var.availability_domain_name
  compartment_ocid          = var.compartment_ocid
  image_id                  = lookup(data.oci_core_images.InstanceImageOCID.images[0], "id")
  shape                     = var.node_shape
  label_prefix              = var.label_prefix
  ssh_authorized_keys       = var.ssh_public_key
  mds_ip                    = module.mds-instance.mysql_db_system.ip_address
  joomla_subnet_id          = oci_core_subnet.joomla_subnet.id
  admin_password            = var.admin_password
  admin_username            = var.admin_username
  joomla_schema             = var.joomla_schema
  joomla_name               = var.joomla_name
  joomla_password           = var.joomla_password
  display_name              = var.joomla_instance_name
  joomla_console_user       = var.joomla_console_user
  joomla_console_password   = var.joomla_console_password
  joomla_console_email      = var.joomla_console_email
  flex_shape_ocpus          = var.node_flex_shape_ocpus
  flex_shape_memory         = var.node_flex_shape_memory
}

