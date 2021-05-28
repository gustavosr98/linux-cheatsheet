# 📁 Important Files & Folders

```bash
# ------------------------------------------------------
/               # Root
root/           # Root user home
boot/           # Kernel and startup
  efi/              # 
  grub/             # 
# ------------------------------------------------------
bin/            # Operating system binaries
sbin/           # Root binaries
usr/            #
  bin/              # non essentials bin
  local/            # locally compiled
proc/           # Kernel info + Running processes info
# ------------------------------------------------------
lib/            # lib files shared across installed programs
opt/            # optional software
# ------------------------------------------------------
etc/            # Editable Text Config
  hosts             # DNS servers
  
  group             # group:x:gid: users[]
  passwd            # users
  shadow            # user encrypted passwords  
  sudoers           # who can use sudo cmd
  skel/             # new user get a copy of this dir
  
  crontab           # cron jobs
  fstab             # partitions

  apt/sources.list    # repos
  apt/sources.list.d/ # repos extension

  systemd/system/     #
    multi-user.target.wants/   # Deamon scripts

  sysctl.conf         # system config  
  # init.d/           # startup 
# ------------------------------------------------------
tmp/            # Temp data
var/            # Variable data
  log/                # Logs
  cache/
    apt/archives/     # apt downloads cache
# ------------------------------------------------------
home/           # users working dir
  <user>/             # $HOME ~        
# ------------------------------------------------------
media/          # removable media devices
  <user>/<usb>/       # mounted USB path 
dev/            # hardware devices or drivers
mnt/            # removable device mount points
lost+found/     # recovered files from crash
```