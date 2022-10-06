#! /bin/bash

file=$1

cloudName=gdrive
cloudFolder=dl

software=/root/up/rclone
transfers=4

if [ -d "${file}" ];then
	${software} copy --transfers=$transfers "$1" ${cloudName}:${cloudFolder}/"$2" 
elif [ -f "${file}" ]; then
	${software} copy "$1" ${cloudName}:${cloudFolder}/ 
fi
