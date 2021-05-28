# 🌐 Networking

```bash
# IP / INTERFACES ----------------------------------------------
# Display all network interfaces and IP address
ip a

# Display eth0 address and details
ip addr show <net_interface>

# Query or control network driver and hardware settings
ethtool eth0

# Send ICMP echo request to host
ping <host>

# Display the network address of the host name.
hostname -i

# Display all local IP addresses of the host.
hostname -I

# DNS ----------------------------------------------
# Display whois information for domain
whois <domain>

# Display DNS information for domain
dig <domain>

# Reverse lookup of IP_ADDRESS
dig -x <ip>

# Display DNS IP address for domain
host domain

# PORTS ----------------------------------------------
# Display listening tcp and udp ports and corresponding programs
netstat -nutlp

# Check open port
lsof -i :<portA>, <portB>

# Test remote port
telnet
nc

# FIREWALL ----------------------------------------------
# Test ports
nmap localhost
nmap <ip>

# UFW
ufw status
ufw status verbose
ufw enable

ufw allow 22
ufw deny 22
ufw delete 22

ufw app list
ufw app info Apache

# Can also use iptable
# https://phoenixnap.com/kb/iptables-tutorial-linux-firewall

# HTTP ----------------------------------------------
# Download http://domain.com/file
wget http://domain.com/file
```