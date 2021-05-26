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
