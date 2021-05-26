# PERMISSIONS ----------------------------------------------
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

# User mask: similar to network masks
# root 0022 / user 0002
umask

# OWNERSHIP ----------------------------------------------
# Change file owner
chown <user> <file>

# Change group owner
chown :<group> <file>
chgrp <group> <file>

# SE LINUX
ls -Z

# Change context type
chcon -t conf_t file
