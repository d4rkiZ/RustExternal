RustScan Automation Script
This script automates the process of reconnaissance on a specified domain using three different tools: subfinder, assetfinder, and amass. After gathering subdomains, it creates a unique list of subdomains and uses RustScan to scan open ports on those subdomains.

Requirements
This script is written in bash and requires a bash shell environment to run.
This script requires subfinder, assetfinder, and amass tools installed on the system.
This script requires RustScan tool installed on the system.
Usage
Download the script and save it to a file with the .sh extension.

Make the script executable by running chmod +x script_name.sh.

Run the script with the following command:

php
Copy code
./script_name.sh <domain> <HeaderTag> <Headers>
domain: The domain to scan.
HeaderTag: The header to include in requests (e.g., User-Agent, Referer, etc.). Leave blank if not required.
Headers: The value of the header to include in requests. Leave blank if not required.
Outputs
This script creates a directory at ~/RustExternalScans and then creates a subdirectory with the name of the scanned domain. In this subdirectory, it creates the following files:

subs.txt: Contains a list of subdomains found using the three tools.
List4RustScan.txt: A unique list of subdomains that RustScan will use to scan open ports.
rustscan.txt: The output of RustScan.
Credits
This script was created by an anonymous author. The code in this script has not been reviewed or audited for security vulnerabilities. Use at your own risk.
