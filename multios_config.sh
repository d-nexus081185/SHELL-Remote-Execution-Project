#!/bin/bash

#Variable Declaration
URL='https://www.tooplate.com/zip-templates/2134_gotto_job.zip'
TEMPLATE='2134_gotto_job'
DIR='/tmp/webfiles'

yum --help &> /dev/null

if [ $? -eq 0 ]
then
		#Set Variable For Amazon Linux
		PACKAGE="httpd wget unzip"
		SVC="httpd"
		
		#Installing Apache Webserver and Dependencies
		echo "********************************************"
		echo "Installing Packages"
		echo "********************************************"
		sudo yum install $PACKAGE -y > /dev/null
		echo 
		
		#Start and Enable the httpd Service
		echo "********************************************"
		echo "Start and Enable HTTD Service"
		echo "********************************************"
		sudo systemctl enable $SVC
		sudo systemctl start $SVC
		echo
		
		#Download Frontend Template to TMP Directory
		echo "********************************************"
		echo "Downloading Frontend Template"
		echo "********************************************"
		mkdir -p $DIR
		cd $DIR
		
		wget $URL > /dev/null
		unzip $TEMPLATE.zip > /dev/null
		sudo cp -r $TEMPLATE/* /var/www/html/
		sudo systemctl restart $SVC
		
		cd ~
		rm -rf $DIR
		
else
		#Set Variable For Ubuntu Linux
		PACKAGE="apache2 wget unzip"
		SVC="apache2"
		
		#Installing Apache Webserver and Dependencies
		echo "********************************************"
		echo "Installing Packages"
		echo "********************************************"
		sudo apt install $PACKAGE -y > /dev/null
		echo 
		
		#Download Frontend Template to TMP Directory
		echo "********************************************"
		echo "Downloading Frontend Template"
		echo "********************************************"
		mkdir -p $DIR
		cd $DIR
		
		wget $URL > /dev/null
		unzip $TEMPLATE.zip > /dev/null
		sudo cp -r $TEMPLATE/* /var/www/html/
		sudo systemctl restart $SVC
		
		cd ~
		rm -rf $DIR
fi
