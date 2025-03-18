resource "iosxr_interface" "GLB-INT-Gi0"{
    interface_name = "GigabitEthernet0/0/0/0"
    ipv4_point_to_point = true
    shutdown = false
}
resource "iosxr_interface" "GLB-INT-Gi1"{
    interface_name = "GigabitEthernet0/0/0/1"
    ipv4_point_to_point = true
    shutdown = false
}
resource "iosxr_interface" "GLB-INT-Gi2"{
    interface_name = "GigabitEthernet0/0/0/2"
    ipv4_point_to_point = true
    shutdown = false
}
resource "iosxr_interface" "GLB-INT-Gi3"{
    interface_name = "GigabitEthernet0/0/0/3"
    ipv4_point_to_point = true
    shutdown = false
}