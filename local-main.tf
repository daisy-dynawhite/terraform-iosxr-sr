# modules/nxos_device/main.tf
terraform {
  required_providers {
    iosxr = {
      source = "CiscoDevNet/iosxr"
      version = "0.5.3"
    }
  }
}

provider "iosxr" {
  username = "devadmin"
  password = "daisydev"
  host    = "192.168.1.101"  
  verify_certificate = false           
  alias = "SR-R1"
}

provider "iosxr" {
  username = "devadmin"
  password = "daisydev"
  host    = "192.168.1.102"  
  verify_certificate = false           
  alias = "SR-R2"
}

module "sr1"{
  source = "./modules/iosxr_device"
  providers = {iosxr = iosxr.SR-R1}
}

module "sr2"{
  source = "./modules/iosxr_device"
  providers = {iosxr = iosxr.SR-R2}
}