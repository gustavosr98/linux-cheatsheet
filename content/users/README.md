# 👥 Users & Permissions

- [👥 Users](#👥-users)
- [🚧 Permissions](#🚧-permissions)

## 👥 Users

```bash
# WHO AM I ----------------------------------------------
# Display the user and group ids of your current user.
id
id <user>

# Display the last users who have logged onto the system.
last

# Show who is logged into the system.
whos

# Show who is logged in and what they are doing.
w

# GROUPS ----------------------------------------------
# Create a group named "sales".
groupadd sales

# Delete group
groupdel sales

# USERS ----------------------------------------------
# Create an account named john, with a comment of "John Smith" and create the user's home directory.
useradd -c "John Smith" -m john

# Change password
passwd john

# Delete the john account. -r removes home folder
userdel -r john

# Lock / Unlock user (Adds ! to /etc/shadow)
usermod -L john
usermod -U john

# USERS / GROUP
# Add the john account to the sales group
usermod -aG sales john
```

## 🚧 Permissions

```bash
# PERMISSIONS ----------------------------------------------

chattr +i <file> # Read only / Inmutable

# Show file permissions
  # 0UGO normal
  # 4UGO runs as root user
  # 6UGO runs as root user and root group
  # 7UGO sticky bit. runs and stays in memory. for regular programs
stat <file>

# Read 4 / Write 2 / Exec 1
chmod 740 file
# Assign = / Add + / Remove -
chmod u=rwx, g+rw, o-rwx file
chmod g+rw file
chmod +x file

  # Binaries need X 
  # Scripts need RX

# User / Group / Others
PERMISSION      EXAMPLE
U   G   O
rwx rwx rwx     chmod 777 filename
rwx rwx r-x     chmod 775 filename
rwx r-x r-x     chmod 755 filename
rw- rw- r--     chmod 664 filename
rw- r-- r--     chmod 644 filename

# List file with permissions
  # First bit: - regular file || d directory  
ls -la

# User mask: similar to network masks
# root 0022 / user 0002
umask

# OWNERSHIP ----------------------------------------------
# Change file owner
chown <user> <file>

# Change group owner
chown :<group> <file>
chgrp <group> <file>
```