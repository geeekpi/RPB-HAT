# RPB-HAT stands for Remote Power Button Hat board 
## This is for a remote power control with GEEEKPI's new designed board, 
## It fit for Power remote button Version 2.02 (Please notice this)
## It's a nice power controller board for your project which needs power on/off/reboot by remote controller.
## It also supports press button onboard.
## And you can use it on your Raspberry Pi 3 module B, and with operating system: Raspbian.
### How to use it ###
#### Install package's for script. 
#### check if wiringPi package has been installed, if not, install it.
* sudo apt-get -y update 
* sudo apt-get -y install wiringPi 
#### Just download it from https://github.com/geeekpi/RPB.git by:
* cd ~
* git clone https://github.com/geeekpi/RPB.git
* cd RPB/
* sudo cp -Rvf remoteswitch /etc/init.d/
* sudo chmod +x /etc/init.d/remoteswitch
* sudo chkconfig --add remoteswitch 
* sudo chkconfig --level 2345 remoteswitch on  
* Reboot your raspberry and try to press the power button, reboot button and test it.
## Have fun!
