#!/bin/sh
start=`date +%s` # this will capture the start time when the script began executing
CDATE=`date +"%Y-%m-%d" -d "1 days ago"` #CDATE variable captures previous one day. 
gzip /Syslog_CDC/Syslog_Primary/System/*.$CDATE.log  #this would compress the log file which are of prevous day with the help of CDATE variable
gzip /Syslog_CDC/Syslog_Primary/JagtaPawan_System/*.$CDATE.log #this would compress the log file which are of prevous day with the help of CDATE variable
gzip /Syslog_CDC/Syslog_Primary/Paloalto_NGFW/*.$CDATE.log #this would compress the log file which are of prevous day with the help of CDATE variable
gzip /Syslog_CDC/Syslog_Primary/Paloalto_NGFW_Cloud/*.$CDATE.log #this would compress the log file which are of prevous day with the help of CDATE variable
gzip /Syslog_CDC/Syslog_Primary/Bluecoat_Proxy/*.$CDATE.log #this would compress the log file which are of prevous day with the help of CDATE variable
gzip /Syslog_CDC/Syslog_Primary/Windows_AD/*.$CDATE.log #this would compress the log file which are of prevous day with the help of CDATE variable
gzip /Syslog_CDC/Syslog_Primary/ZScaler/*.$CDATE.log #this would compress the log file which are of prevous day with the help of CDATE variable
end=`date +%s`#this would capture the end time when the script is completly executed.
runtime=$((end-start)) # the runtime vairable would calculate the total time required by script to execute. 
echo "Hello Sir !!! The script Syslog_Compress took $runtime seconds" >> /home/jagtapawan/script.txt # this would let us know how much time the script was running. The output is stored in /home/jagtapawan/script.txt
