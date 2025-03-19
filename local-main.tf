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
  host    = "192.168.1.105"  
  verify_certificate = false           
  alias = "SR-RR"
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
provider "iosxr" {
  username = "devadmin"
  password = "daisydev"
  host    = "192.168.1.103"  
  verify_certificate = false           
  alias = "SR-R3"
}
provider "iosxr" {
  username = "devadmin"
  password = "daisydev"
  host    = "192.168.1.104"  
  verify_certificate = false           
  alias = "SR-R4"
}

module "rr1"{
  source = "./modules/iosxr_pce"
  providers = {iosxr = iosxr.SR-RR}
}
module "sr1"{
  source = "./modules/iosxr_device"
  providers = {iosxr = iosxr.SR-R1}
}
module "sr2"{
  source = "./modules/iosxr_device"
  providers = {iosxr = iosxr.SR-R2}
}
module "sr3"{
  source = "./modules/iosxr_device"
  providers = {iosxr = iosxr.SR-R3}
}
module "sr4"{
  source = "./modules/iosxr_device"
  providers = {iosxr = iosxr.SR-R4}
}