#!/bin/bash
install_awscli()
{
    sudo apt-get update
   sudo apt-get -y install awscli
    if [ $? -ne 0 ]; then
    echo "awscli not installed"
    fi
    echo "awscli installed successfully"
}
install_netcat()
{
   sudo apt-get update
   sudo apt-get -y install netcat
    if [ $? -ne 0 ]; then
    echo "netcat not installed"
    fi
    echo "netcat installed successfully"
}
install_tsh() 
{ 
   sudo apt update -y
   sudo curl https://apt.releases.teleport.dev/gpg \
-o /usr/share/keyrings/teleport-archive-keyring.asc
source /etc/os-release
echo "deb [signed-by=/usr/share/keyrings/teleport-archive-keyring.asc] \
https://apt.releases.teleport.dev/${ID?} ${VERSION_CODENAME?} stable/v11" \
| sudo tee /etc/apt/sources.list.d/teleport.list > /dev/null
sudo apt-get update
sudo apt-get install teleport
if [ $? -ne 0 ]; then
echo "TSH not installed"
fi
echo "TSH installed successfully"
}


install_awscli
install_netcat
install_tsh
