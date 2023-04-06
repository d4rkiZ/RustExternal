#!/bin/bash
echo '[!] make sure to fully install the tools including each tool dependencies, for example subfinder require multiple dependencies including several api_keys [!] !'

echo '[!!] make sure to leave the installed binaries at ~/go/bin to avoid path problems [!!]'

export PATH=~/go/bin:$PATH

apt install golang -y
sleep 0.5

chmod 777 *
cp RustExternal.sh ~/go/bin/RustExternal.sh
cp SingleDomainBoom.sh ~/go/bin/SingleDomainBoom.sh
cp config.yaml ~/go/bin/config.yaml
cp plugin.xray.yaml ~/go/bin/plugin.xray.yaml
cp module.xray.yaml ~/go/bin/module.xray.yaml
cp xray.yaml ~/go/bin/xray.yaml

echo '[@] installing "docker" [@]'
apt install docker.io -y
sleep 1.5

echo '[@] installing "anew" to go/bin [@]'
go install -v github.com/tomnomnom/anew@latest

cd ~/go/bin
sleep 0.5

echo '[@] downloading "rustscan" to go/bin [@]'
wget https://github.com/RustScan/RustScan/archive/refs/tags/2.1.1.zip
echo '[@] unzipping [@]'
unzip 2.1.1.zip 
cd ~/go/bin/RustScan-2.1.1/rustscan-debbuilder
echo '[@] building up everything, i could take sometime [@]'
sleep 2
bash run.sh
echo '[@] Done, moving up to dpkg rustscan [@]'
cd debs
dpkg -i rustscan_2.1.1_amd64.deb
echo '[@] rustscan installed successfully [@]'
sleep 1

cd ~/go/bin
echo '[@] installing "subfinder" to go/bin [@]'
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sleep 0.5

echo '[@] installing "amass" to go/bin [@]'
go install -v github.com/OWASP/Amass/v3/...@master
sleep 0.5

echo '[@] installing "katana" to go/bin [@]'
go install github.com/projectdiscovery/katana/cmd/katana@latest
sleep 0.5

echo '[@] installing "nuclei" to go/bin [@]'
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
sleep 0.5

echo '[@] installing "httpx" to go/bin [@]'
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
sleep 0.5


echo '[@] installing "assetfinder" to go/bin [@]'
go install -v github.com/tomnomnom/assetfinder@latest
sleep 0.5

echo '[@] downloading "xray" to go/bin [@]'
wget https://github.com/chaitin/xray/releases/download/1.9.4/xray_linux_amd64.zip
echo '[@] unzipping "xray" to go/bin make sure to press "y" if asked[@]'
unzip xray_linux_amd64.zip
echo '[@] Creating "xray" Binary[@]'
mv xray_linux_amd64 xray
chmod +x xray
echo '[@] Make sure "config.yaml & RustExternal.sh" have been copied to ~/go/bin. if not, copy them from the unzip orginal folder'
echo '[@] Make sure "config.yaml & RustExternal.sh" have been copied to ~/go/bin. if not, copy them from the unzip orginal folder'
echo '[@] Make sure "config.yaml & RustExternal.sh" have been copied to ~/go/bin. if not, copy them from the unzip orginal folder'
echo '[@] Make sure "config.yaml & RustExternal.sh" have been copied to ~/go/bin. if not, copy them from the unzip orginal folder'
sleep 3
chmod 777 ~/go/bin/RustExternal.sh
echo '[@] DONE! a nano popup will openup in 8 seconds to provider-config.yaml,dont forget to edit your subfinder api_keys[@]'
sleep 7
echo '[@] nano $HOME/.config/subfinder/provider-config.yaml[@]'
sleep 2
nano $HOME/.config/subfinder/provider-config.yaml
echo '[@] DONE, happy hacking[@]'





