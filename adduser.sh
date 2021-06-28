#!/usr/bin/ksh 
NEW_USERS="/mnt/Adduser/users" 
HOME_BASE="/home/" 
cat ${NEW_USERS} |  while read USER PASSWORD UID COMMENT 
do 
useradd -u ${UID} -c ${COMMENT} -d ${HOME_BASE}${USER} -f 90 ${USER} 

echo ${PASSWORD} | passwd --stdin ${USER} 

done # >/dev/null 2>&1 
