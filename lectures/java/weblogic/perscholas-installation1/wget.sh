#!/bin/sh

#
# Generated on Thu May 21 16:12:38 CDT 2020
# Start of user configurable variables
#
LANG=C
export LANG

#Trap to cleanup cookie file in case of unexpected exits.
trap 'rm -f $COOKIE_FILE; exit 1' 1 2 3 6 

# SSO username 
printf 'SSO User Name:' 
read SSO_USERNAME

# Path to wget command
WGET=/usr/bin/wget

# Log directory and file
LOGDIR=.
LOGFILE=$LOGDIR/wgetlog-$(date +%m-%d-%y-%H:%M).log

# Print wget version info 
echo "Wget version info: 
------------------------------
$($WGET -V) 
------------------------------" > "$LOGFILE" 2>&1 

# Location of cookie file 
COOKIE_FILE=$(mktemp -t wget_sh_XXXXXX) >> "$LOGFILE" 2>&1 
if [ $? -ne 0 ] || [ -z "$COOKIE_FILE" ] 
then 
 echo "Temporary cookie file creation failed. See $LOGFILE for more details." |  tee -a "$LOGFILE" 
 exit 1 
fi 
echo "Created temporary cookie file $COOKIE_FILE" >> "$LOGFILE" 

# Output directory and file
OUTPUT_DIR=.
#
# End of user configurable variable
#

# The following command to authenticate uses HTTPS. This will work only if the wget in the environment
# where this script will be executed was compiled with OpenSSL.
# 
 $WGET  --secure-protocol=auto --save-cookies="$COOKIE_FILE" --keep-session-cookies --http-user "$SSO_USERNAME" --ask-password  "https://edelivery.oracle.com/osdc/cliauth" -O /dev/null 2>> "$LOGFILE"

# Verify if authentication is successful 
if [ $? -ne 0 ] 
then 
 echo "Authentication failed with the given credentials." | tee -a "$LOGFILE"
 echo "Please check logfile: $LOGFILE for more details." 
else
 echo "Authentication is successful. Proceeding with downloads..." >> "$LOGFILE" 
 $WGET  --load-cookies="$COOKIE_FILE" --save-cookies="$COOKIE_FILE" --keep-session-cookies "https://edelivery.oracle.com/osdc/softwareDownload?fileName=V779119-01.zip&token=bzRnU3YrbmhodnM0Y2tZOWtVYmQ4ZyE6OiFmaWxlSWQ9OTA3NTM0NjQmZmlsZVNldENpZD04MDAxODkmcmVsZWFzZUNpZHM9NjMzNTE2LCA1ODk5NDEmcGxhdGZvcm1DaWRzPTM5JmRvd25sb2FkVHlwZT05NTc2MCZhZ3JlZW1lbnRJZD02NjYwNTY3JmVtYWlsQWRkcmVzcz1saHVudGVyQHBlcnNjaG9sYXMub3JnJnVzZXJOYW1lPUVQRC1MSFVOVEVSQFBFUlNDSE9MQVMuT1JHJmlwQWRkcmVzcz0yNjAxOjQ5Ojg0MDI6NDUwOjk4OTo1MmM6ODlhNjpjZjE5JnVzZXJBZ2VudD1Nb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0OyBydjo3NS4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94Lzc1LjAmY291bnRyeUNvZGU9VVMmZGxwQ2lkcz04Mzc0MDc" -O "$OUTPUT_DIR/V779119-01.zip" >> "$LOGFILE" 2>&1 
 $WGET  --load-cookies="$COOKIE_FILE" --save-cookies="$COOKIE_FILE" --keep-session-cookies "https://edelivery.oracle.com/osdc/softwareDownload?fileName=V779120-01.zip&token=Y0REOE9udFlRcGpYZEI5TGNaRVV4dyE6OiFmaWxlSWQ9OTA3NTUwMjMmZmlsZVNldENpZD04MTMxMzgmcmVsZWFzZUNpZHM9NTg5OTQxJnBsYXRmb3JtQ2lkcz0zOSZkb3dubG9hZFR5cGU9OTU3NjAmYWdyZWVtZW50SWQ9NjY2MDU2NyZlbWFpbEFkZHJlc3M9bGh1bnRlckBwZXJzY2hvbGFzLm9yZyZ1c2VyTmFtZT1FUEQtTEhVTlRFUkBQRVJTQ0hPTEFTLk9SRyZpcEFkZHJlc3M9MjYwMTo0OTo4NDAyOjQ1MDo5ODk6NTJjOjg5YTY6Y2YxOSZ1c2VyQWdlbnQ9TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NDsgcnY6NzUuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC83NS4wJmNvdW50cnlDb2RlPVVTJmRscENpZHM9ODM3NDA3" -O "$OUTPUT_DIR/V779120-01.zip" >> "$LOGFILE" 2>&1 
 $WGET  --load-cookies="$COOKIE_FILE" --save-cookies="$COOKIE_FILE" --keep-session-cookies "https://edelivery.oracle.com/osdc/softwareDownload?fileName=V779122-01.zip&token=ZDdyZjhnOUFPYi9LbktRbEN2MU9IdyE6OiFmaWxlSWQ9OTA3NTU0NjEmZmlsZVNldENpZD04MDc1MTMmcmVsZWFzZUNpZHM9NTg5OTUzJnBsYXRmb3JtQ2lkcz0zOSZkb3dubG9hZFR5cGU9OTU3NjAmYWdyZWVtZW50SWQ9NjY2MDU2NyZlbWFpbEFkZHJlc3M9bGh1bnRlckBwZXJzY2hvbGFzLm9yZyZ1c2VyTmFtZT1FUEQtTEhVTlRFUkBQRVJTQ0hPTEFTLk9SRyZpcEFkZHJlc3M9MjYwMTo0OTo4NDAyOjQ1MDo5ODk6NTJjOjg5YTY6Y2YxOSZ1c2VyQWdlbnQ9TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NDsgcnY6NzUuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC83NS4wJmNvdW50cnlDb2RlPVVTJmRscENpZHM9ODM3NDA3" -O "$OUTPUT_DIR/V779122-01.zip" >> "$LOGFILE" 2>&1 
 $WGET  --load-cookies="$COOKIE_FILE" --save-cookies="$COOKIE_FILE" --keep-session-cookies "https://edelivery.oracle.com/osdc/softwareDownload?fileName=V789398-01.zip&token=QmYvcnFIQndjYXg1RG5CaC9UWldiUSE6OiFmaWxlSWQ9OTA3ODkzOTImZmlsZVNldENpZD04MTM4NDQmcmVsZWFzZUNpZHM9NTg5OTk0LCA4MTI0NTcmcGxhdGZvcm1DaWRzPTM5JmRvd25sb2FkVHlwZT05NTc2MCZhZ3JlZW1lbnRJZD02NjYwNTY3JmVtYWlsQWRkcmVzcz1saHVudGVyQHBlcnNjaG9sYXMub3JnJnVzZXJOYW1lPUVQRC1MSFVOVEVSQFBFUlNDSE9MQVMuT1JHJmlwQWRkcmVzcz0yNjAxOjQ5Ojg0MDI6NDUwOjk4OTo1MmM6ODlhNjpjZjE5JnVzZXJBZ2VudD1Nb3ppbGxhLzUuMCAoV2luZG93cyBOVCAxMC4wOyBXaW42NDsgeDY0OyBydjo3NS4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94Lzc1LjAmY291bnRyeUNvZGU9VVMmZGxwQ2lkcz04Mzc0MDc" -O "$OUTPUT_DIR/V789398-01.zip" >> "$LOGFILE" 2>&1 
 $WGET  --load-cookies="$COOKIE_FILE" --save-cookies="$COOKIE_FILE" --keep-session-cookies "https://edelivery.oracle.com/osdc/softwareDownload?fileName=V840994-01_1of2.zip&token=U2ovaTBkaUxEdXl6VThiaDBGZ3FYdyE6OiFmaWxlSWQ9OTI2Njg0NjYmZmlsZVNldENpZD04MDc1ODQmcmVsZWFzZUNpZHM9NTg5OTU5JnBsYXRmb3JtQ2lkcz0zOSZkb3dubG9hZFR5cGU9OTU3NjAmYWdyZWVtZW50SWQ9NjY2MDU2NyZlbWFpbEFkZHJlc3M9bGh1bnRlckBwZXJzY2hvbGFzLm9yZyZ1c2VyTmFtZT1FUEQtTEhVTlRFUkBQRVJTQ0hPTEFTLk9SRyZpcEFkZHJlc3M9MjYwMTo0OTo4NDAyOjQ1MDo5ODk6NTJjOjg5YTY6Y2YxOSZ1c2VyQWdlbnQ9TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NDsgcnY6NzUuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC83NS4wJmNvdW50cnlDb2RlPVVTJmRscENpZHM9ODM3NDA3" -O "$OUTPUT_DIR/V840994-01_1of2.zip" >> "$LOGFILE" 2>&1 
 $WGET  --load-cookies="$COOKIE_FILE" --save-cookies="$COOKIE_FILE" --keep-session-cookies "https://edelivery.oracle.com/osdc/softwareDownload?fileName=V840994-01_2of2.zip&token=UDNZbzliRktQOUw1dWxwS2h6TURadyE6OiFmaWxlSWQ9OTI2Njg0NjcmZmlsZVNldENpZD04MDc1ODQmcmVsZWFzZUNpZHM9NTg5OTU5JnBsYXRmb3JtQ2lkcz0zOSZkb3dubG9hZFR5cGU9OTU3NjAmYWdyZWVtZW50SWQ9NjY2MDU2NyZlbWFpbEFkZHJlc3M9bGh1bnRlckBwZXJzY2hvbGFzLm9yZyZ1c2VyTmFtZT1FUEQtTEhVTlRFUkBQRVJTQ0hPTEFTLk9SRyZpcEFkZHJlc3M9MjYwMTo0OTo4NDAyOjQ1MDo5ODk6NTJjOjg5YTY6Y2YxOSZ1c2VyQWdlbnQ9TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NDsgcnY6NzUuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC83NS4wJmNvdW50cnlDb2RlPVVTJmRscENpZHM9ODM3NDA3" -O "$OUTPUT_DIR/V840994-01_2of2.zip" >> "$LOGFILE" 2>&1 
 $WGET  --load-cookies="$COOKIE_FILE" --save-cookies="$COOKIE_FILE" --keep-session-cookies "https://edelivery.oracle.com/osdc/softwareDownload?fileName=V834474-01.zip&token=SWU4S3d5NGF6SjZENU0xY1dUejhFdyE6OiFmaWxlSWQ9OTEzMTI1NTUmZmlsZVNldENpZD04MDAzMTAmcmVsZWFzZUNpZHM9NTg5OTg2JnBsYXRmb3JtQ2lkcz0zOSZkb3dubG9hZFR5cGU9OTU3NjAmYWdyZWVtZW50SWQ9NjY2MDU2NyZlbWFpbEFkZHJlc3M9bGh1bnRlckBwZXJzY2hvbGFzLm9yZyZ1c2VyTmFtZT1FUEQtTEhVTlRFUkBQRVJTQ0hPTEFTLk9SRyZpcEFkZHJlc3M9MjYwMTo0OTo4NDAyOjQ1MDo5ODk6NTJjOjg5YTY6Y2YxOSZ1c2VyQWdlbnQ9TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NDsgcnY6NzUuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC83NS4wJmNvdW50cnlDb2RlPVVTJmRscENpZHM9ODM3NDA3" -O "$OUTPUT_DIR/V834474-01.zip" >> "$LOGFILE" 2>&1 
 $WGET --load-cookies="$COOKIE_FILE" "https://edelivery.oracle.com/osdc/softwareDownload?fileName=V779121-01.zip&token=NE5EOFhmdDViSUl2UzFWWXJJeklzQSE6OiFmaWxlSWQ9OTA4MDYwOTkmZmlsZVNldENpZD04MDAzMTEmcmVsZWFzZUNpZHM9NTg5OTg2JnBsYXRmb3JtQ2lkcz0zOSZkb3dubG9hZFR5cGU9OTU3NjAmYWdyZWVtZW50SWQ9NjY2MDU2NyZlbWFpbEFkZHJlc3M9bGh1bnRlckBwZXJzY2hvbGFzLm9yZyZ1c2VyTmFtZT1FUEQtTEhVTlRFUkBQRVJTQ0hPTEFTLk9SRyZpcEFkZHJlc3M9MjYwMTo0OTo4NDAyOjQ1MDo5ODk6NTJjOjg5YTY6Y2YxOSZ1c2VyQWdlbnQ9TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NDsgcnY6NzUuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC83NS4wJmNvdW50cnlDb2RlPVVTJmRscENpZHM9ODM3NDA3" -O "$OUTPUT_DIR/V779121-01.zip" >> "$LOGFILE" 2>&1 
fi 

# Cleanup
rm -f "$COOKIE_FILE" 
echo "Removed temporary cookie file $COOKIE_FILE" >> "$LOGFILE" 

