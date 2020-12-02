#!/bin/bash
#cp.sh

# Variables
FROM_PATH=$HOME/$1
FILE_NAME=`date +$USERNAME-%y-%m-%d`
COMPORESS_FILE=$PWD/$FILE_NAME.zip

echo "----------------------------"
echo "Compress Files"
echo "----------------------------"

# Compress the files
zip -r $FILE_NAME.zip $FROM_PATH 

echo "----------------------------"
echo "Send Data to Server"
echo "----------------------------"

# Send the back up to the server
curl -X POST -F "file=@/$COMPORESS_FILE" -H "Content-Type: multipart/form-data" $2; 

# Delete the local backup
rm -rf $COMPORESS_FILE 

echo "\n---------------------------"