#!/bin/bash
echo -e "\e[32;40mInstall package's for script. \e[0m"
sudo apt-get install -y -qq wiringpi
sudo sh -c " curl -sSL https://raw.githubusercontent.com/geeekpi/RPB-HAT/master/remoteswitch > /bin/remoteswitch "
sudo chmod a+x /bin/remoteswitch
sudo sed -i '$i sudo remoteswitch &' /etc/rc.local
echo -e '"\e[32:40m Reboot your raspberry and try to press the power button, reboot button and test it.\e[0m"'
for i in 5 4 3 2 1
do 
  echo -e "\e[32;40m $i second...\e[0m"
  sleep 1
done 
sudo sync
sudo shutdown -r now
