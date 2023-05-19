#!/bin/bash

# Function to check if a command is available
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Check if stress and iperf commands are available
if ! command_exists stress || ! command_exists iperf; then
  echo "Please make sure 'stress' and 'iperf' commands are installed."
  exit 1
fi

# Function to stress CPU and memory using stress command
stress_cpu_memory() {
    # Stress CPU with nproc workers for 60 seconds
    stress --cpu $(nproc) --timeout 60s  >> output.log 2>&1 &

    # Stress memory with that uses 512M less than memory for 60 seconds
    stress  --vm $(nproc) --vm-bytes $(free -m | awk '/Mem/{print $2 - 512}')M --vm-keep --verbose --timeout 60s  >> output.log 2>&1 &
}

# Function to stress network using iperf command
stress_network() {
    # Stress Network for 60 seconds
    iperf -s -u -i 1 -p 5001 > /dev/null &
    sleep 2
    iperf -c $(curl ifconfig.me) -u -b 100M -t 60
}

echo "Starting resource utilization script..."
stress_cpu_memory
stress_network
echo "Resource utilization script completed."