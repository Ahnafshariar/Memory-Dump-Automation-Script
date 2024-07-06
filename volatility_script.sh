#!/bin/bash

#Author: Ahnaf
#This script is for me to automatically run all the necessary command for the memory dumps so that I don't have to run manually.

#Enter the directory for the dumps
echo "Enter the file location:"

read location_file

#Go to the volatility3 folder
cd /home/mjolnirtraining/Desktop/volatility3

#echo the input dump location
echo $location_file

#extracting the file name from the location and file name
file_name=$(echo "$location_file" | sed 's|.*/||' | sed 's|\.mem$||')

#checking the name
echo $file_name

#windows info
python3 vol.py -f $location_file windows.info.Info > $file_name-windows_info.ahnaf
cat $file_name-windows_info.ahnaf

#hashdump
python3 vol.py -f $location_file windows.hashdump.Hashdump > $file_name-windows_hashdump.ahnaf
cat $file_name-windows_hashdump.ahnaf

#windows pstree
python3 vol.py -f $location_file windows.pstree.PsTree > $file_name-windows_pstree.ahnaf
cat $file_name-windows_pstree.ahnaf

#windows pslist
python3 vol.py -f $location_file windows.pslist.PsList > $file_name-windows_pslist.ahnaf
cat $file_name-windows_pslist.ahnaf

#windows netscan
python3 vol.py -f $location_file windows.netscan.NetScan > $file_name-windows_netscan.ahnaf
cat $file_name-windows_netscan.ahnaf

#windows netstat
python3 vol.py -f $location_file windows.netstat.NetStat > $file_name-windows_netstat.ahnaf
cat $file_name-windows_netstat.ahnaf

#windows sessions
python3 vol.py -f $location_file windows.sessions.Sessions > $file_name-windows_sessions.ahnaf
cat $file_name-windows_sessions.ahnaf

#windows userassist
python3 vol.py -f $location_file windows.registry.userassist.UserAssist > $file_name-windows_userassist.ahnaf
cat $file_name-windows_userassist.ahnaf