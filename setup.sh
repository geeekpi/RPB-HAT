#!/bin/bash
echo -e "\033mInstall package's for script.\0m" 
sudo apt-get -y update 
sudo apt-get -y install wiringPi git-core chkconfig
echo -e "\033m Download RPB driver...\0m"
cd ~
git clone https://github.com/geeekpi/RPB.git
cd RPB/
sudo cp -Rvf remoteswitch /etc/init.d/
sudo chmod +x /etc/init.d/remoteswitch
sudo chkconfig --add remoteswitch 
sudo chkconfig --level 2345 remoteswitch on  
echo -e "\e[32:40m Reboot your raspberry and try to press the power button, reboot button and test it.\e[0m"
for i in 5 4 3 2 1
do 
  echo -e "\e[32:40m $i\e[0m"
  sleep 1
done 
sudo sync
sudo shutdown -r now

