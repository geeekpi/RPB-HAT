#!/bin/bash
echo -e "\e[32;40mInstall package's for script. \e[0m"
sudo apt-get -y update 
sudo apt-get -y install wiringpi git-core chkconfig
echo -e "\e[32;40m Download RPB driver...\e[0m"
cd ~
git clone https://github.com/geeekpi/RPB.git
cd RPB/
sudo cp -Rvf remoteswitch /etc/init.d/
sudo chmod +x /etc/init.d/remoteswitch
sudo chkconfig --add remoteswitch 2&>/dev/null
sudo chkconfig --level 2345 remoteswitch on 2&>/dev/null
sudo sed '/exit/d' /etc/rc.local
sudo sed '$i gpio mode 25 OUT\ngpio mode 25 1\nexit 0'  /etc/rc.local
echo -e "Change /boot/config.txt configuration"
echo -e "\e[32:40m Reboot your raspberry and try to press the power button, reboot button and test it.\e[0m"
for i in 5 4 3 2 1
do 
  echo -e "\e[32;40m $i\e[0m"
  sleep 1
done 
sudo sync
sudo shutdown -r now
