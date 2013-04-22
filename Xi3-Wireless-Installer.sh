rm -rf /tmp/worker.sh
rm -rf /tmp/RTL8192xC_USB_linux_v3.4.4_4749.20121105.zip
mv -f ./RTL8192xC_USB_linux_v3.4.4_4749.20121105.zip /tmp/RTL8192xC_USB_linux_v3.4.4_4749.20121105.zip
echo 'echo "This script needs administrator privileges.  The default password is xi3password"' > /tmp/worker.sh
echo 'sudo rm -rf xi3-temp-wlinstall' >> /tmp/worker.sh
echo 'mkdir xi3-temp-wlinstall' >> /tmp/worker.sh
echo 'cd xi3-temp-wlinstall' >> /tmp/worker.sh
echo 'mkdir docs' >> /tmp/worker.sh
echo 'pushd ./docs' >> /tmp/worker.sh
echo 'echo "Xi3 Belkin N300 Wireless Driver Install script" > instructions-pt1' >> /tmp/worker.sh
echo 'echo -e "\n" >> instructions-pt1' >> /tmp/worker.sh
echo 'echo "This script installs the Belkin N300 wireless drivers for Linux." >> instructions-pt1' >> /tmp/worker.sh
echo 'echo -e "\n" >> instructions-pt1' >> /tmp/worker.sh
echo 'echo -e "\n" >> instructions-pt1' >> /tmp/worker.sh
echo 'echo "You may press any key in the terminal to continue installation." >> instructions-pt1' >> /tmp/worker.sh
echo 'kwrite instructions-pt1 </dev/null &>/dev/null &' >> /tmp/worker.sh
echo 'dolphin ~/xi3-temp-wlinstall/docs' >> /tmp/worker.sh
echo 'echo "Press any key to continue..."' >> /tmp/worker.sh
echo 'read -n 1 -s' >> /tmp/worker.sh
echo 'popd' >> /tmp/worker.sh

echo 'pushd .' >> /tmp/worker.sh
echo 'sudo zypper -n removerepo http://www2.ati.com/suse/11.4' >> /tmp/worker.sh
echo 'sudo zypper -n install kernel-source=2.6.37.6-0.7' >> /tmp/worker.sh
echo 'sudo mv /tmp/RTL8192xC_USB_linux_v3.4.4_4749.20121105.zip ./RTL8192xC_USB_linux_v3.4.4_4749.20121105.zip' >> /tmp/worker.sh
echo 'sudo unzip RTL8192xC_USB_linux_v3.4.4_4749.20121105.zip' >> /tmp/worker.sh
echo 'cd RTL8188C_8192C_USB_linux_v3.4.4_4749.20121105/' >> /tmp/worker.sh
echo 'sudo zypper -n install make' >> /tmp/worker.sh
echo 'sudo zypper -n install gcc' >> /tmp/worker.sh
echo 'sudo chmod 755 install.sh' >> /tmp/worker.sh
echo 'sudo ./install.sh' >> /tmp/worker.sh
echo 'popd' >> /tmp/worker.sh

echo 'pushd docs' >> /tmp/worker.sh
echo 'echo "Now open YaST (Under Start > Computer > YaST) and enter the password (Default is xi3password)." > instructions-pt2' >> /tmp/worker.sh
echo 'echo "In YaST, select Network Devices from the left side, and then Network Settings" >> instructions-pt2' >> /tmp/worker.sh
echo 'echo "In the new window, click the Global Options tab and under Network Setup Method select User Controlled with NetworkManager." >> instructions-pt2' >> /tmp/worker.sh
echo 'echo "Select OK." >> instructions-pt2' >> /tmp/worker.sh
echo 'echo "" >> instructions-pt2' >> /tmp/worker.sh
echo 'echo "Press any key in the terminal to continue." >> instructions-pt2' >> /tmp/worker.sh
echo 'kwrite instructions-pt2 </dev/null &>/dev/null &' >> /tmp/worker.sh
echo 'echo "Press any key to continue..."' >> /tmp/worker.sh
echo 'read -n 1 -s' >> /tmp/worker.sh
echo 'knetworkmanager </dev/null &>/dev/null &' >> /tmp/worker.sh
echo 'echo -e "Please unplug the Ethernet cable at this time.\nClick the Ethernet port icon in the bottom right hand of the screen.\nSelect WLAN Interface Create Network Connection to connect to a wireless network.\n\nYou can now press any key in the terminal to close the installer." > instructions-pt3' >> /tmp/worker.sh
echo 'kwrite instructions-pt3 </dev/null &>/dev/null &' >> /tmp/worker.sh
echo 'popd' >> /tmp/worker.sh
echo 'echo -e "Instillation finished\!\n\nPress any key to exit."' >> /tmp/worker.sh
echo 'read -n 1 -s' >> /tmp/worker.sh

chmod 755 /tmp/worker.sh

konsole -e bash -e /tmp/worker.sh


