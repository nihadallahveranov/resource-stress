#! /bin/bash

uptime >> output.log 2>&1

# CPU, memory and network stress. The following command will load 2 CPU worker, 1 memory worker that uses 512M less than memory and 1 network worker for 30 seconds
stress --cpu 2 --vm 1 --vm-bytes $(free -m | awk '/Mem/{print $2 - 512}')M --vm-keep --io 1 --verbose --timeout 30s >> output.log 2>&1

uptime >> output.log 2>&1