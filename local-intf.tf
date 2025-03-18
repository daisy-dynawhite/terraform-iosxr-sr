resource "iosxr_interface" "INT-SR2-Lo0"{
    interface_name = "Loopback0"
    description = "*** Lo0 - SR Loopback ***"
    shutdown = false
    ipv4_address = "1.1.1.1"
    ipv4_netmask = "255.255.255.255"
    provider = iosxr.SR-R2
}
