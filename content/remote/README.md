# 🛰 Remote

```bash
# SSH ----------------------------------------------
# -i identity_file
# -p port
# Connect to host as your local username.
ssh host

# Connect to host as user
ssh user@host

# Local port bindind
# -R for remote side
ssh -L port:host:hostport
ssh -L port:hostport

# SCP ----------------------------------------------
# Secure copy file.txt to the /tmp folder on server
scp file.txt server:/tmp

# Copy *.html files from server to the local /tmp folder.
scp server:/var/www/*.html /tmp

# Copy all files and directories recursively from server to the current system's /tmp folder.
scp -r server:/var/www /tmp
```