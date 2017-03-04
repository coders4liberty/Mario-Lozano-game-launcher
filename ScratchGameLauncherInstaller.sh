#!/bin/bash

LAUNCHER_DIR="/opt/kano/Mario-Lozano-game-launcher"

delete()
{  
	read key

	case $key in
	[yY][eE][sS]|[yY]|"")
		sudo rm -rf $1
		echo -e "\nDelete $1 complete!\n" 
	;;
	*)
	exit
	;;
	esac
}

#Update source-list of dependencies
echo -e "====================================\n"
echo -e "\n Updating source lists to download dependencies ... \n Please check your internet connection! \n"
echo -e "====================================\n"
sleep 2
sudo apt-get update 

if test -d $LAUNCHER_DIR;
then
  	echo  -e "\n[Scratch Game Launcher installer] It looks like you've already got the Scratch Game Launcher installed."
  	echo  -e "\n[Scratch Game Launcher installer] You'll need to remove $LAUNCHER_DIR to install."
  	echo  -e "\nWould you like to remove [Scratch Game Launcher installer] directory[Y/n]?"
	delete $LAUNCHER_DIR ;
fi

echo -e "[Scratch Game Launcher installer] Installing Midori ..."
sudo apt-get -y install midori
echo -e "[Scratch Game Launcher installer] Installing JoyPad Config tool ..."
sudo apt-get -y install qjoypad

echo  -e "\nInstalling git ...\n"
sudo apt-get -y install git

echo -e "\n[Scratch Game Launcher installer] Installing desktop icons."
sudo mkdir -p $LAUNCHER_DIR
sudo git clone git://github.com/coders4liberty/Mario-Lozano-game-launcher.git $LAUNCHER_DIR

sudo cp $LAUNCHER_DIR/Mario-Lozano.desktop /usr/share/applications

if test -e ~/Desktop/Mario-Lozano.desktop; 
then
	echo -e "\n~/Desktop/Mario-Lozano.desktop file exists!\nDo you want to remove it[y/n]?"
	delete ~/Desktop/Mario-Lozano.desktop;	
fi
	
sudo ln -s $LAUNCHER_DIR/Mario-Lozano.desktop ~/Desktop/Mario-Lozano.desktop
sudo chmod +x ~/Desktop/Mario-Lozano.desktop
sudo chown $(whoami) ~/Desktop/Mario-Lozano.desktop

sudo cp $LAUNCHER_DIR/epic-ninja.desktop /usr/share/applications

# Geometry Jump
if test -e ~/Desktop/geometry-jump.desktop; 
then
	echo -e "\n~/Desktop/geometry-jump.desktop file exists!\nDo you want to remove it[y/n]?"
	delete ~/Desktop/geometry-jump.desktop;	
fi
	

echo -e "\n[Scratch Game Launcher installer] Installing controller configurations."
sudo mkdr /home/pi/.qjoypad3

cd /home/pi/.qjoypad3
sudo wget https://github.com/coders4liberty/Scratch-game-launcher/raw/master/FOIL-Mario.lyt

cd $LAUNCHER_DIR

#Chmod scripts to be runnable
sudo chmod +x Mario-Lozano.sh
#sudo chmod +x Pony-Math.sh
#sudo chmod +x Rabbit-Eats-Math-for-Breakfast-Pi.sh
#sudo chmod +x Epic-Ninja.sh
#sudo chmod +x FOIL-Mario.sh
#sudo chmod +x Geometry-Jump.sh


sleep  2
echo -e "\nComplete!\n"
echo -e "\nEverything done! \n"
