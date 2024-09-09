#!/bin/bash

USER='devops01'

for host in `cat hosts` 
do
	echo "*********************************************"
	echo "Connecting to $host"
	echo "Pushing the shell script to $host"
	scp multios_config.sh $USER@$host:/tmp/
	echo "Executing the shell script on $host"
	ssh $USER@$host sudo /tmp/multios_config.sh
	ssh $USER@$host sudo rm -rf /tmp/multios_config.sh
	echo "*********************************************"
done
