# Mario Lozano Game Launcher
Provides a desktop icon and controller configurations for a Scratch game running on Phosphorous on Chromium on Raspberry Pi or Debian-based Linux such as Ubuntu. It runs better on Ubuntu than Raspberry Pi. 

Installation
------------
Run installation shell script using one of the following command lines in the terminal:

```sh
curl -L https://goo.gl/w5iKGF | bash
```

or

```sh
wget --no-check-certificate https://goo.gl/w5iKGF -O - | bash
```

If your username is not pi, you may have to copy the .lyt files from /opt/kano/Scratch-game-launcher to the .qjoypad folder in your home directory. press ctrl + h to show the .qjoypad folder.

## Controls:
Right click screen and pick "Leave fullscreen" to exit fullscreen.

### Super Mario Lozano
#### Keyboard
- Press s to start
- Arrow keys - Move
- UP/W - Jump
- Space - Attack
- T - Throw
- P - Pause
- M - Music On/Off

##### Joystick:
- Button 8 (Start) = Start
- Button 1,2 (A,B) = Jump
- Button 7 (Select) = Music on/off

Note: QJoyPad may not work on Kano. It did not detect my controller. However, the controller worked on an NES emulator. However, the NES emulator did not display the name of the buttons when I was configuring the controls. This may be an issue with the Kano OS. 
