# RPB-HAT stands for Remote Power Button Hat board 
## This is for a remote power control with GEEEKPI's new designed board, 
## It fit for Power remote button Version 2.02 (Please notice this)
## It's a nice power controller board for your project which needs power on/off/reboot by remote controller.
## It also supports press button onboard and Piboxy control board.
## And you can use it on your Raspberry Pi 3 module B, and with operating system: Raspbian.
### How to use it ###
#### Install package's for script. 
#### check if wiringPi package has been installed, if not, install it.
* sudo apt-get -y update 
* sudo apt-get -y install wiringPi chkconfig
## Method 1 ##
#### Just download it from https://github.com/geeekpi/RPB-HAT by:
* cd ~
* git clone https://github.com/geeekpi/RPB-HAT.git
* cd RPB-HAT/
* sudo chmod +x setup.sh
* sudo bash setup.sh
--------------------------------------------------------------------------------------------------------------------
## Method 2 ##
#### You can set it up by yourself, so that you can learn about it. (for learning people)
* cd ~
* git clone https://github.com/geeekpi/RPB-HAT.git
* cd RPB-HAT/
* sudo cp -Rvf remoteswitch /etc/init.d/
* sudo chmod +x /etc/init.d/remoteswitch
* sudo chkconfig --add remoteswitch 
* sudo chkconfig --level 2345 remoteswitch on  
* Reboot your raspberry and try to press the power button, reboot button and test it.
## Have fun!
