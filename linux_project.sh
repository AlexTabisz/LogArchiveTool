#!/bin/bash 

#declaring startdate variable using date function from linux
startdate=$(date +%Y-%m-%d)
#declaring a variable for the archive and compress log file
archive_file="project_${startdate}.tar.gz"


#archive and compress log file
tar -czvf "$archive_file" project.log

#0 means success / 1 means failed
#$? stores the most recent variable called
#ne=not equal

#checking if file was successfully created
if [ $? -ne 0 ]; then
    echo "Error: Either Gzip or Tar failed"
    exit 1
fi

#copying file to a new directory
cp "$archive_file"  "$log_file_path"

#checking if the file was copied to a new directory or failed
if [ $? -ne 0 ]; then
    echo "Error: Copying file to new directory failed"
    exit 1
else
    echo "File was copied successfully to a new directory" 

fi
