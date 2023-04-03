## RustScan Automation Script ##
This script automates the process of reconnaissance on a specified domain using four different tools: subfinder, assetfinder, nuclei vulnerability scanner, xray vulnerability crawler and scanner. After gathering subdomains, it creates a unique list of subdomains and uses RustScan to scan open ports on those subdomains.

## Requirements ##
This script is written in bash and requires a bash shell environment to run.
You can use ./requirements.sh to install the dependencies .

This script requires the following tools to be installed on the system:

subfinder
assetfinder
nuclei 
xray 
RustScan
amass
Katana 
anew 
httpx 

## Usage ##
* Clone the repository or download the code.
* Navigate to the directory that contains the RustExternal.sh script.
* Make the script executable by running chmod +x v.sh.
* Run the script with the following command:
* ./RustExternal.sh <domain> <HeaderTag> <Headers>
* domain: The domain to scan.
* HeaderTag: The header to include in requests (e.g., User-Agent, Referer, etc.). Leave blank if not required.
* Headers: The value of the header to include in requests. Leave blank if not required.

## Outputs ##
This script creates a directory at ~/RustExternalScans and then creates a subdirectory with the name of the scanned domain. In this subdirectory, it creates the following files:

* subs.txt: Contains a list of subdomains found using the three tools.
* List4RustScan.txt: A unique list of subdomains that RustScan will use to scan open ports.
* nuclei.txt: The output of nuclei vulnerability scanner.
* xray.txt: The output of xray vulnerability crawler and scanner.
  
## Credits ##
  
* @projectdiscovery
* @chaitin
* @tomnomnom
* @owasp-amass
* @RustScan
 


Disclaimer
This script is provided for educational purposes only. Misuse of this script to gain unauthorized access to computer systems is strictly prohibited. The author assumes no liability for any damages caused by the use or misuse of this script.
