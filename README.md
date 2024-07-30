# Change MAC Address Script

This Bash script facilitates changing the MAC address of a network interface on Linux systems, providing user prompts and feedback while handling errors gracefully.

## Function Definitions

- **`print_green()`**:
  - **Purpose**: Displays messages in green color.
  - **Usage**: `print_green "Your message here"`

- **`print_red()`**:
  - **Purpose**: Displays messages in red color.
  - **Usage**: `print_red "Your error message here"`

- **`change_mac_address(interface, new_mac)`**:
  - **Arguments**:
    - `interface`: Name of the network interface (e.g., `eth0`, `wlan0`).
    - `new_mac`: The new MAC address to set.
  - **Process**:
    - Verifies the existence of the specified network interface using `ip link show`.
    - Disables the interface using `ifconfig`.
    - Changes the MAC address using `macchanger`.
    - Reactivates the interface with `ifconfig`.
    - Prints a confirmation message with the new MAC address.

## Main Script Flow

1. **User Input**:
   - Prompts the user to enter the network interface name.
   - Prompts the user to enter the new MAC address.
   
2. **Execution**:
   - Displays a message indicating the change process.
   - Calls `change_mac_address()` with the user-provided inputs.

## Precautions

- **Elevated Privileges**: The script requires `sudo` for commands like `ifconfig` and `macchanger`. Ensure you have the necessary permissions.
- **Dependency**: The `macchanger` utility must be installed for the script to function correctly.
- **Validation**: The script checks that the specified network interface exists before attempting to change its MAC address.

## Conclusion

This script provides an efficient way to change a network interface's MAC address on Linux systems. It ensures user-friendly interaction, performs necessary validations, and offers feedback on the operation's success.
