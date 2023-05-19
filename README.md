# VM Resource Stress Script

This Bash/Shell script provides a convenient way to stress test the resources of a virtual machine using the `stress` and `iperf` commands. It allows you to stress the CPU and memory, as well as run an iperf server and client for network performance testing.

## Prerequisites

Before running this script, ensure that the following prerequisites are met:

- The `stress` command should be installed on the virtual machine. You can install it using your package manager (e.g., `apt`, `yum`).
- The `iperf` command should also be installed. Use your package manager to install it if it's not already installed.

## Usage

1. Clone the repository or download the script file.
2. Open a terminal and navigate to the directory containing the script.
3. Make the script executable if necessary: `chmod +x resource_stress.sh`
4. Run the script: `./resource_stress.sh`

## Note

- It's recommended to have a thorough understanding of the implications of stress testing on your virtual machine before running this script.
- Use caution when stressing resources, as it may impact the performance and stability of your virtual machine.

## License

This script is released under the [MIT License](LICENSE).
