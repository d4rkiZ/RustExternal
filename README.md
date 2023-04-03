RustExternalAutomation

This is a simple script to automate scanning of a target with the help of the following tools:

Subfinder
Assetfinder
Amass
Rustscan
Prerequisites
The following tools should be installed on your system:

Subfinder
Assetfinder
Amass
Rustscan
Usage
./RustScanAutomation.sh domain HeaderTag Headers

Where:

domain is the target domain or IP address
HeaderTag is the header you want to scan for. For example: Server
Headers are the headers you want to check. For example: headers.txt
The results of each tool are stored in a separate file under ~/RustExternalScans/domain/:

subfinder results are stored in subs.txt
assetfinder results are stored in subs.txt
amass results are stored in subs.txt
rustscan results are stored in rustscan.txt
Note
The script creates a folder at ~/RustExternalScans/ and then creates a sub-folder for the target domain. If you run the script again with the same target domain, the existing folder will be overwritten.

Also, the script scans for common ports. If you want to add or remove ports, you can edit the list of ports in the rustscan command in the script.
