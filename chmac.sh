#!/bin/bash

# Function to display messages in green color
print_green() {
    echo -e "\e[32m$1\e[0m"
}

# Function to display messages in red color
print_red() {
    echo -e "\e[31m$1\e[0m"
}

# Function to change MAC address
change_mac_address() {
    interface="$1"
    new_mac="$2"

    # Check if the interface exists
    if ! ip link show "$interface" >/dev/null 2>&1; then
        print_red "Error: Interface $interface does not exist."
        exit 1
    fi

    # Disable interface
    sudo ifconfig "$interface" down

    # Change MAC address
    sudo macchanger -m "$new_mac" "$interface"

    # Enable interface
    sudo ifconfig "$interface" up

    # Display the new MAC address
    print_green "MAC address of $interface changed to $new_mac"
}

# Main script

# Prompt for interface name
read -p "Enter the interface name (e.g., eth0, wlan0): " interface

# Prompt for new MAC address
read -p "Enter the new MAC address: " new_mac

# Display messages
echo "Changing MAC address of $interface to $new_mac..."

# Call function to change MAC address
change_mac_address "$interface" "$new_mac"
