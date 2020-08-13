#!/bin/bash
color="\e[93m"
echo -e "$color"
figlet  "Tech Dns Info"
echo -e "1. Technologies used by the web\n2. Dns Info"
echo -e "Enter Your choice"
read info
if [ $info -eq 1 ]
then
	echo "Technologies used by the web Starting...."
	sleep 2
	echo -e "Enter Site url"
	read url
	whatweb $url
elif [ $info -eq 2 ]
then
	echo "Dns  Info Starting..."
	sleep 2
	echo -e "Enter Ip or Site Url"
	read fetch
	nslookup $fetch
else
	echo "invalid option" 

fi
