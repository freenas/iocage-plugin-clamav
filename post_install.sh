#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf clamav_freshclam_enable="YES"
sysrc -f /etc/rc.conf clamav_clamd_enable="YES"

# Start the service
service clamav-freshclam start 2>/dev/null
# Sleep 15 sec to allow freshclam to sync the database
sleep 15
service clamav-clamd start 2>/dev/null
