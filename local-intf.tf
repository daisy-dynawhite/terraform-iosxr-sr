resource "iosxr_interface" "INT-SR1-Lo0"{
    interface_name = "Loopback0"
    description = "*** Lo0 - SR Loopback ***"
    shutdown = false
    ipv4_address = "1.1.1.1"
    ipv4_netmask = "255.255.255.255"
    provider = iosxr.SR-R1
}
resource "iosxr_interface" "INT-SR2-Lo0"{
    interface_name = "Loopback0"
    description = "*** Lo0 - SR Loopback ***"
    shutdown = false
    ipv4_address = "2.2.2.1"
    ipv4_netmask = "255.255.255.255"
    provider = iosxr.SR-R2
}
resource "iosxr_interface" "INT-SR1-Gi1"{
    interface_name = "GigabitEthernet0/0/0/1"
    description = "*** SR1 Gi1 - SR2 Gi1 ***"
    shutdown = false
    ipv4_address = "10.1.1.0"
    ipv4_netmask = "255.255.255.254"
    provider = iosxr.SR-R1
}
resource "iosxr_interface" "INT-SR2-Gi1"{
    interface_name = "GigabitEthernet0/0/0/1"
    description = "*** SR2 Gi1 - SR1 Gi1 ***"
    shutdown = false
    ipv4_address = "10.1.1.1"
    ipv4_netmask = "255.255.255.254"
    provider = iosxr.SR-R2
}