# modules/nxos_device/main.tf
terraform {
  required_providers {
    iosxr = {
      source = "CiscoDevNet/iosxr"
      version = ">= 0.5.3"
    }
  }
}