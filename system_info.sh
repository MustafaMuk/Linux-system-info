#!/bin/bash

# System Information and Log Archiving Script

# Define log file
LOG_FILE="sysinfo_$(date +'%Y%m%d_%H%M%S').log"

echo "----------------------" | tee -a $LOG_FILE
echo "System Information" | tee -a $LOG_FILE
echo "----------------------" | tee -a $LOG_FILE

# Display system uptime
echo -e "\nUptime:" | tee -a $LOG_FILE
uptime | tee -a $LOG_FILE

# Display CPU and Memory usage
echo -e "\nCPU Usage:" | tee -a $LOG_FILE
top -bn1 | grep "Cpu(s)" | tee -a $LOG_FILE

echo -e "\nMemory Usage:" | tee -a $LOG_FILE
free -h | tee -a $LOG_FILE

# Display Disk Usage
echo -e "\nDisk Usage:" | tee -a $LOG_FILE
df -h | tee -a $LOG_FILE

# Archive system logs (if applicable)
BACKUP_DIR="log_archive"
mkdir -p $BACKUP_DIR

echo -e "\nArchiving logs..." | tee -a $LOG_FILE
tar -czf "$BACKUP_DIR/syslogs_$(date +'%Y%m%d_%H%M%S').tar.gz" /var/log 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Logs successfully archived in $BACKUP_DIR." | tee -a $LOG_FILE
else
    echo "Error: Log archiving failed (may require sudo permissions)." | tee -a $LOG_FILE
fi

echo -e "\nScript execution completed." | tee -a $LOG_FILE
