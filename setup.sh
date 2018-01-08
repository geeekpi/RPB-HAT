#!/bin/bash
echo -e "\e[32;40mInstall package's for script. \e[0m"
sudo apt-get -y update 
sudo apt-get -y install wiringPi git-core chkconfig
echo -e "\e[32;40m Download RPB driver...\e[0m"
cd ~
git clone https://github.com/geeekpi/RPB.git
cd RPB/
sudo cp -Rvf remoteswitch.sh /etc/init.d/
sudo chmod +x /etc/init.d/remoteswitch.sh
sudo chkconfig --add remoteswitch.sh 
sudo chkconfig --level 2345 remoteswitch.sh on
#sudo sed '$i /etc/init.d/remoteswitch -s 24'  /etc/rc.local
echo -e "\e[32:40m Reboot your raspberry and try to press the power button, reboot button and test it.\e[0m"
for i in 5 4 3 2 1
do 
  echo -e "\e[32;40m $i\e[0m"
  sleep 1
done 
sudo sync
sudo shutdown -r now
