#!/bin/bash

echo "=== CPU Usage ==="
top -bn1 | grep "Cpu(s)"

echo -e "\n=== Memory Usage ==="
free -m

echo -e "\n=== Disk Usage ==="
df -h --total | grep 'total'

echo -e "\n=== Top 5 Processes by CPU Usage ==="
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

echo -e "\n=== Top 5 Processes by Memory Usage ==="
ps -eo pid,comm,%mem --sort=-%mem | head -6
