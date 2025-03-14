Project URL: https://roadmap.sh/projects/log-archive-tool
Log Archive Tool project from roadmap.sh

This is how to build and use this tool

1.Export the path destination for the log file (avoid exposing your username)
	- export log_file_path="/full/path/to/your/directory"

2. Create a sample log file
	- touch your_log_file_name.log

3. Create a bash script to execute the tool
	- Set date function and link it when declaring a variable for file name
	- Using the sample log file create a gzip compressed tar archive
	- Add error handling to check if file was created
	- Copy file to new desired directory, -i option require a confirmation before proceeding
	- Add error handling to check if file was copied to the desire directory

4. Provide neccessary permisions for script to be executed
	- chmod +x your_script.sh

5. Design a crontab to run the script once a day at 00:00am EST
	- crontab -e
		0(min) 0(hour) */7(everyday for 7 days) *(every month) *(every year)
		0 0 */7 * * $run_path_script
	
	- Export run_path_script (avoid exposing your username/path)
		- export run_path_script="/full/path/to/your/script"

![image](https://github.com/AlexTabisz/LogArchiveTool/blob/main/file.png?raw=true)
