<b> For first time usage please run requirements file </b>

![image](https://user-images.githubusercontent.com/97190263/229495028-3b766fd4-d825-456d-a721-bb89ff6fce45.png)
![image](https://user-images.githubusercontent.com/97190263/229516243-c222f25f-e46a-44f6-befe-d180c55ed9b0.png)


-------------------- **If you only need to scan a single domain and want to skip the subdomain enumeration steps using tools like Subfinder or Assetfinder, you can use the SingleDomainBoom.sh script** --------------------

## RustScan Automation Script ##
The purpose of this script is to streamline the reconnaissance process for a specified domain using various tools. Firstly, it collects subdomains and generates a list of unique subdomains. Next, it utilizes RustScan to scan open ports on those subdomains. After that, it organizes the list of subdomains based on their port status and feeds it to the nuclei and xray vulnerability scanners. Finally, the script produces an HTML output file summarizing the findings.

## Requirements ##
This script is written in bash and requires a bash shell environment to run.

* YOU MUST Run  ./requirements.sh with sudo to install the dependencies and orginize the config files. *

This script requires the following tools to be installed on the system:

* subfinder [It is highly recommended to provide API keys for the different sources, as it can significantly improve the results. Many of the supported sources offer free API keys that can be easily obtained and used with Subfinder.]

* assetfinder
* nuclei 
* xray 
* RustScan
* amass
* Katana 
* anew 
* httpx 
* docker

## Usage ##
* Clone the repository or download the code.
* Navigate to the directory that contains the RustExternal.sh script.
* Make the script executable by running chmod +x RustExternal.sh.
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
 


*Disclaimer*

This script is provided for educational purposes only. Misuse of this script to gain unauthorized access to computer systems is strictly prohibited. The author assumes no liability for any damages caused by the use or misuse of this script.
