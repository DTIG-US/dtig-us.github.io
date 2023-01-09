#Install
## How to Boot Raspberry Pi 4 with SSD
1.  Assemble and install the SSD into the expansion board
2.  Connect the imaged microSD to RPi. Connect the M.2 expansion board and the case then connect both components using the USB Adapter.
3.  Enter the terminal of the RPi to update system and firmware.

> `sudo apt-get update`
> `sudo apt-get full-upgrade`
> `sudo rpi-update`

> After update is complete, reboot the Raspberry Pi.
> `sudo reboot`
4. Install the latest bootloader then reboot
> `sudo rpi-eeprom-update -d -a`
> `sudo reboot`

5. Select latest Boot ROM Version during boot
> To enter Raspberry Pi Config
> `sudo raspi-config`
>
> Go to Advanced Options > Boot ROM Version
> Choose "Latest version boot ROM"
> Save

6. Copy SD Card content to SSD using built-in "SD Card Copier"
7. Remove SD card and device should boot using the M.2 card on next boot.

## Argon Driver
To utilize the power button and configure fan speed, driver has to be installed. Instruction below will walk you through installing the driver.

1. Open Terminal and enter the following:
> `curl https://download.argon40.com/argon1.sh | bash`
2. After installation, two shortcuts are added to the desktop, "configure" and "uninstall", they can be used to configure and uninstall the driver. The following commands will also work:
> Configure Driver
> `argonone-config`

> Uninstall Driver
> `argonone-uninstall`

----
Public: Yes