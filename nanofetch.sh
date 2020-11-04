#!/bin/bash
# Simple fetch script
# Get variables
kernel=$(uname -r)
memraw=$(grep -m 1 -i 'MemTotal' /proc/meminfo)
memkb=$(echo $memraw | sed 's/MemTotal: //g; s/kB//g')
mem=$(expr $memkb / 1024)
memrawfree=$(grep -m 1 -i 'MemAvailable' /proc/meminfo)
memfkb=$(echo $memrawfree | sed 's/MemAvailable: //g; s/kB//g')
distro=$(grep -m 1 -i 'NAME=' /etc/os-release | sed 's/NAME=//g;s/"//g;s/PRETTY_//g')

# Print output

echo Kernel: $kernel (Darwin)
echo Distro: $distro
echo Shell: $SHELL
echo Mem: $mem\mb
