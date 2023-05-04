## Resource Stress Script

This script can be used to stress the CPU, RAM, and network on a Linux system for every two hours using crontab. The script uses various commands and tools to fully utilize the system resources and test their performance.

### Prerequisites
* Linux operating system
* `stress` command (for stress test)
* `nload` command (for monitor network usage)

### Usage
To use this script, follow these steps:
1. Save the script file and make it executable (`chmod +x resource-stress.sh`).
2. Add a crontab entry to run the script every two hours:

    ```bash
    0 */2 * * * /path/to/resource-stress.sh
    ```
3. Save the crontab file and wait for the script to run on the scheduled intervals.

### Script Details
* **--cpu N** and **--io N**: spawn N workers spinning on sqrt()
* **--vm N**: spawn N workers spinning on malloc()/free()
* **--vm-bytes B**: malloc B bytes per vm worker (default is 256MB)
* **--vm-keep**: redirty memory instead of freeing and reallocating
