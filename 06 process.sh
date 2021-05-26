# SERVICES / DAEMONS ----------------------------------------------
# List all
systemctl status

# One service
systemctl status <service>
systemctl stop <service>
systemctl start <service>

# Enabled to start at boot time
systemctl disable <service>
systemctl enable <service>

# Service scripts
less /etc/systemd/system/multi-user.target.wants/docker.service

# PROCESSES ------------------------------------------------------
# Display your currently running processes
ps

# Display all the currently running processes on the system.
# https://www.cyberciti.biz/faq/find-out-what-processes-are-running-in-the-background-on-linux/
# STAT: D unstoppable | Idle | Running | Stoppable | sTopped | Zombie
ps -ef
ps -aux

# List with an specific STAT
ps [STAT]
ps r

# Display process information for processname
ps -ef | grep <processname>
ps -eo pid,user,stat,comm | grep <processname>

# Display and manage the top processes
top

# Interactive process viewer (top alternative)
htop

# Terminate / Kill process with process ID of pid
kill <pid>
kill -9 <pid>

# Kill all processes named processname
killall <processname>

# Send to background
<program> [> /tmp/file 2> /tmp/file.error] &
nohup <program> &
Ctrl + Z

# Display stopped or background jobs
# of this terminal
jobs -l

# Brings the most recent background job to foreground
fg [n]

# If process output goes to file
tail -f /proc/<pid>/fd/1

# CRON ------------------------------------------------------
# https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804
# List jobs
crontab -l

# Edit jobs
crontab -e
cd /var/spool/cron/crontabs

# See logs
less /var/spool/mail/<user>