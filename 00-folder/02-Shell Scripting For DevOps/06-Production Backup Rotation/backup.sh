#!/bin/bash

<< readme
this is a script for backup with 5 day rotation

Useage:
./backup.sh <path to your source> <path to backup folder>
readme

function display_usage {
	echo "Useage: ./backup.sh <path to your source> <path to backup folder>
"	
}

if [ $# -eq 0 ]; then
	display_usage
fi


source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2


function create_backup {
	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null
	
	if [ $? -eq 0 ]; then
		echo "Backup Generated Successfully for ${timestamp}"
	fi
	
}

function perform_rotation {
	backup=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))
	
	if [ "${#backup[@]}" -gt 5 ]; then
		echo "Performing rotation for 5 days"

		backup_to_remove=("${backup[@]:5}")
	
		for backup in "${backup_to_remove[@]}";
		do 
			rm -f ${backup}
		done


	fi

}

create_backup
perform_rotation




