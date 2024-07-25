# change_MAC_Address
change mac address in Linux like OS

Function Definitions:

print_green(): This function is responsible for displaying messages in green color on the terminal.

print_red(): This function displays messages in red color on the terminal.

change_mac_address(): This function is the core component of the script. It takes two arguments: the network interface name and the new MAC address.

It first verifies the existence of the specified network interface. If the interface does not exist, it displays an error message and exits the script.
Next, it deactivates the specified interface.
It then utilizes the macchanger utility to modify the MAC address of the interface to the provided new MAC address.
After changing the MAC address, it reactivates the interface.
Finally, it prints a confirmation message indicating the successful modification of the MAC address.
Main Script Flow:
User Input: The script prompts the user to input the network interface name (e.g., eth0, wlan0) and the new MAC address they wish to assign to the interface.

Execution: After receiving the required input, the script proceeds to execute the MAC address change process.

Function Invocation: It invokes the change_mac_address() function, passing the provided interface name and new MAC address as arguments.

Precautions:
Elevated Privileges: The script utilizes sudo to execute commands that require elevated privileges, such as ifconfig and macchanger. Therefore, it should be executed with sufficient permissions (e.g., as root or using sudo).
Dependency: The successful execution of the script depends on the presence of the macchanger utility on the system. Ensure that macchanger is installed before running the script.
Validation: The script performs validation to ensure that the specified network interface exists before attempting to modify its MAC address.
Conclusion:
In summary, this Bash script streamlines the process of changing the MAC address of a network interface by providing a user-friendly interface, error handling, and feedback on the outcome of the operation. It offers a convenient solution for users seeking to modify MAC addresses on Linux systems.





