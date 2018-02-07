#!/bin/sh
sleep 5
echo "TH3D OctoPrint Improver!"
echo "Credit to Timothy Hoogland from https://www.th3dstudio.com/ for well...everything"
echo "WARNING! This script will reboot your Pi on completion! DO NOT Run if you are in the middle of a print!!"
echo -n "Do you wish to continue (y/n)?"
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo Yes
    echo "Installing OctoPrint-FullScreen Plugin"
	/home/pi/oprint/bin/python -m pip install https://github.com/BillyBlaze/OctoPrint-FullScreen/archive/master.zip & wait
	echo "Installing OctoPrint-DetailedProgress"
	/home/pi/oprint/bin/python -m pip install https://github.com/dattas/OctoPrint-DetailedProgress/archive/master.zip & wait
	echo "Installing OctoPrint-M73Progress"
	/home/pi/oprint/bin/python -m pip install https://github.com/cesarvandevelde/OctoPrint-M73Progress/archive/master.zip & wait
	echo "Installing OctoPrint-DisplayZ"
	/home/pi/oprint/bin/python -m pip install https://github.com/foosel/OctoPrint-DisplayZ/archive/master.zip & wait
	echo "Installing OctoPrint-EEPROM-Marlin"
	/home/pi/oprint/bin/python -m pip install https://github.com/amsbr/OctoPrint-EEPROM-Marlin/archive/master.zip & wait
	echo "Installing OctoPrint-FirmwareUpdater"
	/home/pi/oprint/bin/python -m pip install https://github.com/OctoPrint/OctoPrint-FirmwareUpdater/archive/master.zip & wait
	echo "Installing OctoPrint-PrintHistory"
	/home/pi/oprint/bin/python -m pip install https://github.com/imrahil/OctoPrint-PrintHistory/archive/master.zip & wait
	echo "Installing OctoPrint-PSUControl"
	/home/pi/oprint/bin/python -m pip install https://github.com/kantlivelong/OctoPrint-PSUControl/archive/master.zip & wait
	echo "Installing OctoPrint-Tempsgraph"
	/home/pi/oprint/bin/python -m pip install https://github.com/1r0b1n0/OctoPrint-Tempsgraph/archive/master.zip & wait
	echo "Installing StatusLine"
	/home/pi/oprint/bin/python -m pip install https://github.com/AmedeeBulle/StatusLine/archive/master.zip & wait
	echo "Installing OctoPrint-TouchUI"
	/home/pi/oprint/bin/python -m pip install https://github.com/BillyBlaze/OctoPrint-TouchUI/archive/master.zip & wait
	echo "Installing OctoPrint-SimpleEmergencyStop"
	/home/pi/oprint/bin/python -m pip install https://github.com/BrokenFire/OctoPrint-SimpleEmergencyStop/archive/master.zip & wait
	echo "Installing OctoPrint-NavbarTemp"
	/home/pi/oprint/bin/python -m pip install https://github.com/imrahil/OctoPrint-NavbarTemp/archive/master.zip & wait
	echo "Updating package lists"
	sudo apt-get update & wait
	echo "Installing avrdude"
	sudo apt-get -y install avrdude & wait
	echo "Upgrading packages"
	sudo apt-get -y & wait
	echo "Updating Raspberry Pi firmware....rebooting after...I hope you were ready!"
	sudo rpi-update & wait
	echo "If you are reading this it is too late and I am rebooting."
	sudo reboot
else
    echo No
    echo "Re-run the script when you are ready."
fi
