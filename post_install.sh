#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf clamav_freshclam_enable="YES"
sysrc -f /etc/rc.conf clamav_clamd_enable="YES"

#update database before start
freshclam 

# Start the service
service clamav-freshclam start 2>/dev/null
service clamav-clamd start 2>/dev/null
