# C3PO
## a simple script to automate the beginning of an "attack"

Script creates directories for the target
*NOTE* the structure is designed after my machine layout. change accordingly in the script

uncomment andcomment the lines/tools that are installed

## Goals
-  detect user file structure and react accordingly/use a config file
- read nmap output and run through different scans dependent on nmap output
	- Dirbuster/gobuster if web server
	- Gowitness to snap pictures of webpage if on 80
	- gowitness to snap screencaps of directories found with go buster
	- download contents of ftp or smb share if there is one
	- run nikto scan if its a webserver

- migrate to python or golang 


