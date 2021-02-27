#!/bin/bash

echo "Installation Starting..."

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs
pip3 install requests urllib3
sudo apt install snapd
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
sudo apt update

echo "installing bash_profile aliases from recon_profile"
git clone https://github.com/nahamsec/recon_profile.git
cd recon_profile
cat bash_profile >> ~/.bash_profile
source ~/.bash_profile
echo "done"



#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
					sudo tar -xvf go1.13.4.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi

#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
apt install -y awscli
echo "Don't forget to set up AWS credentials!"


#create a tools folder in ~/
mkdir ~/A1BHT/tools
cd ~/A1BHT/tools/

#install aquatone
echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"

#install chromium
echo "Installing Chromium"
sudo snap install chromium
echo "done"

echo "installing JSParser"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install
cd ..
echo "done"

echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ..
echo "done"

echo "installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
echo "done"

echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ..
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
echo "done"

echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
echo "done"

echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
echo "done"

echo "installing knock.py"
git clone https://github.com/guelfoweb/knock.git
echo "done"

echo "installing lazyrecon"
git clone https://github.com/nahamsec/lazyrecon.git
echo "done"

echo "installing nmap"
sudo apt-get install -y nmap
echo "done"

echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
cd ..
echo "done"

echo "installing Interlace"
git clone https://github.com/codingo/Interlace.git
cd Interlace
pip install -r requirements.txt
cd ..
echo "done"

echo "installing asnlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd asnlookup
pip install -r requirements.txt
cd ..
echo "done"

echo "installing Arjun"
git clone https://github.com/s0md3v/Arjun.git
cd Arjun
chmod +x setup.py
cd ..
echo "done"

echo "installing SubDomainizer"
git clone https://github.com/nsonaniya2010/SubDomainizer.git
cd SubDomainizer
pip install -r requirements.txt
cd ..
echo "done"

echo "installing byp4xx"
git clone https://github.com/lobuhi/byp4xx.git
cd byp4xx
chmod u+x byp4xx.sh
cd ..
echo "done"

echo "installing Lazy-FuzzZ"
git clone https://github.com/th3hack3rwiz/Lazy-FuzzZ.git
git clone https://github.com/ZephrFish/BurpFeed.git
cd Lazy-FuzzZ
chmod +x lazyFuzzZ.sh
cd ..
echo "done"

echo "installing GitDorker"
git clone https://github.com/obheda12/GitDorker.git
cd GitDorker
pip install -r requirements.txt
cd ..
echo "done"

echo "installing reconftw"
git clone https://github.com/six2dez/reconftw
cd reconftw
chmod +x *.sh
cd ..
echo "done"

echo "installing findomain"
wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
echo "done"

echo "installing httprobe"
go get -u github.com/tomnomnom/httprobe 
echo "done"

echo "installing unfurl"
go get -u github.com/tomnomnom/unfurl 
echo "done"

echo "installing waybackurls"
go get github.com/tomnomnom/waybackurls
echo "done"

echo "installing assetfinder"
go get -u github.com/tomnomnom/assetfinder
echo "done"

echo "installing ffuf"
go get -u github.com/ffuf/ffuf
echo "done"

echo "installing gau"
go get -u -v github.com/lc/gau
echo "done"

echo "installing gf"
go get -u github.com/tomnomnom/gf
echo "done"

echo "installing hakrawler"
go get github.com/hakluke/hakrawler
echo "done"

echo "installing httpx"
GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx
echo "done"

echo "installing nuclei"
go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
echo "done"

echo "installing shuffledns"
go get -v github.com/projectdiscovery/shuffledns/cmd/shuffledns
echo "done"

echo "installing subfinder"
go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
echo "done"

echo "installing subover"
go get github.com/Ice3man543/SubOver
echo "done"

echo "installing subzy"
go get -u -v github.com/lukasikic/subzy
echo "done"

echo "installing feroxbuster"
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash
echo "done"

echo "installing amass"
sudo snap install amass
echo "done"

echo "installing xsrfprobe"
pip install xsrfprobe
echo "done"

echo "installing crtndstry"
git clone https://github.com/nahamsec/crtndstry.git
echo "done"

echo "downloading Seclists"
git clone https://github.com/danielmiessler/SecLists.git
cd SecLists/Discovery/DNS
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd
echo "done"


echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
ls -la

echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"


echo "////////Installation Finished////////"
