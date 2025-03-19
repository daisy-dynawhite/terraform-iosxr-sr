#SR1 Interfaces
    resource "iosxr_interface" "INT-SR1-Lo0"{
        interface_name = "Loopback0"
        description = "*** Lo0 - SR1 Loopback ***"
        shutdown = false
        ipv4_address = "1.1.1.1"
        ipv4_netmask = "255.255.255.255"
        provider = iosxr.SR-R1
    }
    resource "iosxr_interface" "INT-SR1-Gi0"{
        interface_name = "GigabitEthernet0/0/0/0"
        description = "*** SR1 Gi0 - RR1 Gi1 ***"
        shutdown = false
        ipv4_address = "10.1.5.0"
        ipv4_netmask = "255.255.255.254"
        provider = iosxr.SR-R1
    }
    resource "iosxr_interface" "INT-SR1-Gi1"{
        interface_name = "GigabitEthernet0/0/0/1"
        description = "*** SR1 Gi1 - SR2 Gi1 ***"
        shutdown = false
        ipv4_address = "10.1.2.1"
        ipv4_netmask = "255.255.255.0"
        provider = iosxr.SR-R1
    }
    resource "iosxr_interface" "INT-SR1-Gi2"{
        interface_name = "GigabitEthernet0/0/0/2"
        description = "*** SR1 Gi2 - SR3 Gi2 ***"
        shutdown = false
        ipv4_address = "10.1.3.1"
        ipv4_netmask = "255.255.255.0"
        provider = iosxr.SR-R1
    }

#SR2 Interfaces
    resource "iosxr_interface" "INT-SR2-Lo0"{
        interface_name = "Loopback0"
        description = "*** Lo0 - SR2 Loopback ***"
        shutdown = false
        ipv4_address = "2.2.2.1"
        ipv4_netmask = "255.255.255.255"
        provider = iosxr.SR-R2
    }
    resource "iosxr_interface" "INT-SR2-Gi0"{
        interface_name = "GigabitEthernet0/0/0/0"
        description = "*** SR2 Gi0 - RR1 Gi2 ***"
        shutdown = false
        ipv4_address = "10.2.5.0"
        ipv4_netmask = "255.255.255.254"
        provider = iosxr.SR-R2
    }
    resource "iosxr_interface" "INT-SR2-Gi1"{
        interface_name = "GigabitEthernet0/0/0/1"
        description = "*** SR2 Gi1 - SR1 Gi1 ***"
        shutdown = false
        ipv4_address = "10.1.2.2"
        ipv4_netmask = "255.255.255.0"
        provider = iosxr.SR-R2
    }
    resource "iosxr_interface" "INT-SR2-Gi2"{
        interface_name = "GigabitEthernet0/0/0/2"
        description = "*** SR2 Gi2 - SR4 Gi2 ***"
        shutdown = false
        ipv4_address = "10.2.4.1"
        ipv4_netmask = "255.255.255.0"
        provider = iosxr.SR-R2
    }

#SR3 Interfaces
    resource "iosxr_interface" "INT-SR3-Lo0"{
        interface_name = "Loopback0"
        description = "*** Lo0 - SR3 Loopback ***"
        shutdown = false
        ipv4_address = "3.3.3.1"
        ipv4_netmask = "255.255.255.255"
        provider = iosxr.SR-R3
    }
    resource "iosxr_interface" "INT-SR3-Gi1"{
        interface_name = "GigabitEthernet0/0/0/1"
        description = "*** SR3 Gi1 - SR4 Gi1 ***"
        shutdown = false
        ipv4_address = "10.3.4.1"
        ipv4_netmask = "255.255.255.0"
        provider = iosxr.SR-R3
    }
    resource "iosxr_interface" "INT-SR3-Gi2"{
        interface_name = "GigabitEthernet0/0/0/2"
        description = "*** SR3 Gi2 - SR1 Gi2 ***"
        shutdown = false
        ipv4_address = "10.1.3.2"
        ipv4_netmask = "255.255.255.0"
        provider = iosxr.SR-R3
    }

#SR4 Interfaces
    resource "iosxr_interface" "INT-SR4-Lo0"{
        interface_name = "Loopback0"
        description = "*** Lo0 - SR4 Loopback ***"
        shutdown = false
        ipv4_address = "4.4.4.1"
        ipv4_netmask = "255.255.255.255"
        provider = iosxr.SR-R4
    }
    resource "iosxr_interface" "INT-SR4-Gi1"{
        interface_name = "GigabitEthernet0/0/0/1"
        description = "*** SR4 Gi1 - SR3 Gi1 ***"
        shutdown = false
        ipv4_address = "10.3.4.2"
        ipv4_netmask = "255.255.255.0"
        provider = iosxr.SR-R4
    }
    resource "iosxr_interface" "INT-SR4-Gi2"{
        interface_name = "GigabitEthernet0/0/0/2"
        description = "*** SR4 Gi2 - SR2 Gi2 ***"
        shutdown = false
        ipv4_address = "10.2.4.2"
        ipv4_netmask = "255.255.255.0"
        provider = iosxr.SR-R4
    }

#RR Interfaces
    resource "iosxr_interface" "INT-RR1-Lo0"{
        interface_name = "Loopback0"
        description = "*** Lo0 - RR1 Loopback ***"
        shutdown = false
        ipv4_address = "5.5.5.1"
        ipv4_netmask = "255.255.255.255"
        provider = iosxr.SR-RR
    }
        resource "iosxr_interface" "INT-RR1-Gi1"{
        interface_name = "GigabitEthernet0/0/0/1"
        description = "*** RR1 Gi1 - SR1 Gi0 ***"
        shutdown = false
        ipv4_address = "10.1.5.1"
        ipv4_netmask = "255.255.255.254"
        provider = iosxr.SR-RR
    }
        resource "iosxr_interface" "INT-RR1-Gi2"{
        interface_name = "GigabitEthernet0/0/0/2"
        description = "*** RR1 Gi2 - SR2 Gi0 ***"
        shutdown = false
        ipv4_address = "10.2.5.1"
        ipv4_netmask = "255.255.255.254"
        provider = iosxr.SR-RR
    }