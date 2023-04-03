## Overview ##
This script automates the process of reconnaissance on a specified domain using several tools including subfinder, assetfinder, amass, nuclei, xray, katana, anew, and httpx. After gathering subdomains, it creates a unique list of subdomains and uses RustScan to scan open ports on those subdomains. Then it scans the identified services using nuclei and xray, and crawls the website using katana. Finally, it removes duplicate URLs using anew and checks for live hosts using httpx.

## Requirements ##
This script is written in bash and requires a bash shell environment to run.

This script requires the following tools to be installed on the system:

subfinder
assetfinder
amass
RustScan
nuclei
xray
katana
anew
httpx

## Usage ##
Clone the repository or download the code.

Navigate to the directory that contains the script.

Make the script executable by running chmod +x script_name.sh.

Run the script with the following command:

bash
Copy code
./script_name.sh <domain>
where domain is the domain to scan.

The script will create a directory at ~/RustExternalScans and then create a subdirectory with the name of the scanned domain. In this subdirectory, it will create the following files:

subs.txt: Contains a list of subdomains found using the three tools.
List4RustScan.txt: A unique list of subdomains that RustScan will use to scan open ports.
rustscan.txt: The output of RustScan.
nuclei.txt: The output of nuclei.
xray.json: The output of xray.
katana_urls.txt: The output of katana.
unique_urls.txt: The output of anew.
live_hosts.txt: The output of httpx.
Credits
This script was created by an anonymous author. The code in this script has not been reviewed or audited for security vulnerabilities. Use at your own risk.

Disclaimer
This script is provided for educational purposes only. Misuse of this script to gain unauthorized access to computer systems is strictly prohibited. The author assumes no liability for any damages caused by the use or misuse of this script.
