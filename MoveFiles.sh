#!/bin/sh
start=`date +%s` # this will capture the time when the script started
#find /Syslog/System/*.gz -mtime 1 -type f -exec mv "{}" /Syslog_Bkp/System_Bkp/ \;

CDATE=`date +"%Y-%m-%d" -d "1 days ago"` #variable CDATE will store previous date value. 


#mv /Syslog/System/*.$CDATE*.gz /Syslog_Bkp/System_Bkp/
mv /Syslog_CDC/Syslog_Primary/System/*.log.gz /Syslog_CDC/Syslog_Backup/System_Backup/ #move compressed date from Source folder to Destination folder
mv /Syslog_CDC/Syslog_Primary/JagtaPawan_System/*.log.gz /Syslog_CDC/Syslog_Backup/JagtaPawan_System_Backup/ #move compressed date from Source folder to Destination folder
mv /Syslog_CDC/Syslog_Primary/Paloalto_NGFW/*.log.gz /Syslog_CDC/Syslog_Backup/Paloalto_NGFW_Backup/ #move compressed date from Source folder to Destination folder
mv /Syslog_CDC/Syslog_Primary/Paloalto_NGFW_Cloud/*.log.gz /Syslog_CDC/Syslog_Backup/Paloalto_NGFW_Cloud_Backup/ #move compressed date from Source folder to Destination folder
mv /Syslog_CDC/Syslog_Primary/Bluecoat_Proxy/*.log.gz /Syslog_CDC/Syslog_Backup/Bluecoat_Proxy_Backup/ #move compressed date from Source folder to Destination folder
mv /Syslog_CDC/Syslog_Primary/Windows_AD/*.log.gz /Syslog_CDC/Syslog_Backup/Windows_AD_Backup/ #move compressed date from Source folder to Destination folder
mv /Syslog_CDC/Syslog_Primary/ZScaler/*.log.gz /Syslog_CDC/Syslog_Backup/ZScaler_Backup/ #move compressed date from Source folder to Destination folder
#mv /Syslog/System/*.$CDATE*.gz /Syslog_Bkp/System_Bkp/
end=`date +%s` # this will capture the time when the script ended
runtime=$((end-start)) #this will calculate the total time required for the script to execute. 
echo "Hello Sir !!! The script Transist took $runtime seconds" >> /home/jagtapawan/script.txt #this will store the value in home/jagtapawan/script.txt
