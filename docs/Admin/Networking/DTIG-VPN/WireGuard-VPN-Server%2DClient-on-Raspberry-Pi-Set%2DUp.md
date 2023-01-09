Deploying Pi Hole, WireGuard Server on Raspberry Pi 4

Start by formatting and setting up your SD card.
a. Use Raspberry Pi Imager
 b. Choose OS (Raspberry Pi OS (32-bit) with desktop)
 c. Choose your storage device (SSD Card)
 d. Select the cog to set up Host Name, enable SSH, set user PW, Local settings, hit save.
 e.
 f. Select write and allow the storage disk to be written and verified.
 2. Power on your Pi and perform the following steps (this can be done through SSH or if connected locally the desktop).
 a. Set Display to allow headless resolution 640x480 or best for your monitor.
 b. Set interfaces to ensure SSH and VNC are enabled.
 c. Verify Localization, local, time zone, keyboard, country.
 d.
 e. Disable WiFi and Blue tooth (unless specifically needed for your set up).
 f. Perform update.
 g. Use terminal ((ip a)) to discover network IP address of your new server. Make sure to record, you will need this later in the process.
 h. You now have a new, clean installation on you Pi.
 3. Install and configure Pi Hole:
 a. I choose to manually run the installer but there are three other methods possible based on your knowledge of Linux and use case.
One-Step Automated Install
 a. Those who want to get started quickly and conveniently may install Pi-hole using the following command:

 b. curl -sSL https://install.pi-hole.net  | bash

 c. Alternative Install Methods, piping to bash is controversial, as it prevents you from reading code that is about to run on your system. Therefore, we provide these alternative installation methods which allow code review before installation:

 v. Method 1: Clone our repository and run

 vi. git clone --depth 1 https://github.com/pi-hole/pi-hole.git  Pi-hole

 vii. cd "Pi-hole/automated install/"

 viii. sudo bash basic-install.sh

Method 2: Manually download the installer and run
 a. wget -O basic-install.sh https://install.pi-hole.net 

 b. sudo bash basic-install.sh

 c. Method 3: Using Docker to deploy Pi-hole

 d. Please refer to the Pi-hole docker repo to use the Official Docker Images.

b. PLEASE NOTE THIS IS THE RESIDENTIAL METHOD. We will be moving to develop Enterprise solutions in Q3 2022.

 i. Post-install: Make your network take advantage of Pi-hole

 ii. Once the installer has been run, you will need to configure your router to have DHCP clients use Pi-hole as their DNS server which ensures that all devices connecting to your network will have content blocked without any further intervention. Recommended. Be sure to set a secondary Public DNS on your router for Backup/ failover if needed.

 iii. If your router does not support setting the DNS server, you can use Pi-hole's built-in DHCP server; be sure to disable DHCP on your router first (if it has that feature available).

 iv. As a last resort, you can manually set each device to use Pi-hole as their DNS server.

d. Hit enter for ok

f. Enter for Ok

g. Record you gateway an select Yes to set static IP.

h. Ste you router to give Poi Hole a static IP

i. Ensure you understand to set your router to assign this IP only to this Pi.

j. For now, we recommend using Google upstream, later configure Open DNS also once up; using the web interface but will revive this once our own DNS and DHCP server are online.

k. Use list provide, we will update in future.

l. Install web interface.

m. Install the web server.

n. Turn log queries on we can always change in future to meet our needs.

o. Select privacy mode, choose to show everything we can always change in future to meet our needs.

p. Installation will continue from here.

q. Make sure you configure your router. Then restart the Pi.

Installing Wire Gaurd
 a. The first thing we need to do is ensure our Raspberry Pi is using the latest available packages. We can do that by running the following two commands.
 i. sudo apt update
 ii. sudo apt full-upgrade
We need to install the only package that we require to run the install scripts we need. While this package should be available most distributions on of the Raspbian operating system, we will make sure by running the command below.
 a. sudo apt install curl -y
 b. Use static IP from the Pi Hole
 c.
 d. Select no
 e. Since we are controlling Ips at the router level answer no
 f. Select yes
 g. Use default device port
 h. Select Yes, we will chenge later when we deploy internal DNS
 i. For now we are testing with our location Ips, we will eventually mover to FQDN.
 j. Genert Keys make sure you record them.
 k.
 l. Select Yes
Now that we have successfully installed the WireGuard software to our Raspberry Pi, we can create a profile for it. To be able to create this profile, we will be making use of the PiVPN script again. To begin creating a new profile for WireGuard, we need to run the following command.
 a. sudo pivpn add
 b. All you need to do is type in a name for the profile that you are creating. For example, we will be calling our profile “PiMyLifeUp“ “Cdrummond” .
 c. We will make naming convention decistions once we are functional.
 d. Once you have created a profile, it will be stored within the directory specified in the output. If you followed the previous steps and used the pi user, you will be able to find the config file within the /home/pi/configs directory. You can use the config file within here to set up your WireGuard clients
 7. Generating a QR Code for your WireGuard Profile
 8. You will be able to scan this QR code using your device. This saves you from having to copy the config file from your device. Luckily for us, the PiVPN software comes with a QR code generator that we can use.
 a. To generate a QR code for your profile, you will need to start by running the following command. Make sure you replace “PROFILENAME” with the name you set in the previous section. In our case, this will be “PiMyLifeUp“. pivpn -qr PROFILENAMECopy
 Networking is still key!! You mustg allow your edge router to forward the the router thatg handels the VPN server, this router musgt forward requests to the VPN server!!
 Setting up a WireGuard VPN on the Raspberry Pi - Pi My Life Up
 Web UIs for WireGuard That Make Configuration Easier | by Tate Galbraith | The Startup | Medium
You can then scan this QR code using your iOS or Android devices. You can find the WireGuard app on both the Google Play Store and the Apple App Store. When scanning the QR code, you will be asked to enter a name for the profile.

At this point, you should now have successfully got a WireGuard VPN running on the Raspberry Pi.

Setting up a WireGuard VPN on the Raspberry Pi - Pi My Life Up

Sever only instructions: https://pimylifeup.com/raspberry-pi-wireguard/ 

---
Public: Yes