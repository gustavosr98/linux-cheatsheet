# 📦 Dependencies (APT)

```bash
# APT PACKAGE MANAGER
# main, restrictred (propietary), universe (community), multiverse (copyrights)
# /etc/sources.list
# <type> <url> <release-name> <repository-name>
# https://linuxhint.com/apt_package_manager_ubuntu/

# PACKAGES ----------------------------------------------
# Check packages to update
apt update

# List installed
apt list --installed

# List packages to update
apt list --upgradable

# Update pacakges
apt upgrade

# Remove unncessary
apt autoremove

# Install package
apt install <package>[=version]
apt install <file>.deb 

# Remove package
apt remove <package>

# Remove configuration files
apt purge <package>

# Search 
apt search <query>

# Show info
apt show <package> 

# List .deb downloaded in cache
ls -lh /var/cache/apt/archives/

# Clean cache
apt clean

# REPOS ----------------------------------------------
# Add repo / remove
apt-add-repository [--remove] <repo>
apt-add-repository ppa:audio-recorder/ppa
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```