#!/bin/bash

# Lazarus-style System Reconnaissance Tool (Educational)
echo "--- System Information Gathering ---" > log.txt

echo "1. Hostname & User:" >> log.txt
whoami >> log.txt
hostname >> log.txt

echo "2. Network Configuration (IP):" >> log.txt
ip addr | grep inet >> log.txt

echo "3. OS Details:" >> log.txt
uname -a >> log.txt

echo "4. Running Services (Top 5):" >> log.txt
ps aux --sort=-%mem | head -n 6 >> log.txt

echo "Reconnaissance Complete. Check log.txt"
