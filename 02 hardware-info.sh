# HARDWARE -----------------------------------------
lshw -short
# Display messages in kernel ring buffer
dmesg

# CPU ----------------------------------------------
lscpu
cat /proc/cpuinfo
dmidecode -t procesor

# RAM ----------------------------------------------
cat /proc/meminfo
dmidecode -t memory
# Display free and used memory RAM 
# ( -h for human readable, -m for MB, -g for GB.)
free -h

# USB ----------------------------------------------
lsusb
lsusb -tv

# HD / DISKS ---------------------------------------
# Show info about disk sda
hdparm -i /dev/sda

# Perform a read speed test on disk sda
hdparm -tT /dev/sda

# Test for unreadable blocks on disk sda
badblocks -s /dev/sda

# Show free and used space on mounted filesystems
df -h

# Show free and used inodes on mounted filesystems
df -i

# Display disks partitions sizes and types
fdisk -l

# Display disk usage of path
# -a, --all
# -c, --total
# -s, --summarize
# -t, --threshold=SIZE
# -h, --human-readable
# --exclude=PATTERN
du -ah path
du -sh path

# PCI ----------------------------------------------
lspci -tv

# DMI/SMBIOS ---------------------------------------
# (hardware info) from the BIOS
dmidecode -t system
dmidecode -t bios