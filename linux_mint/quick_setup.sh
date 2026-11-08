#!/usr/bin/env bash
# Author: beau-ryan
# Version: 0.1.0
# For: Linux Mint (Cinnamon) - check versions, Drivers & nvidia support
# To Use: 
#   chmod +x quick_setup.sh
#   run:
#       ./quick_setup.sh 
#  A menu with options choose btw 1-6 or q | Q


title="Quick-Setup (Linux Mint)"

banner() {
    echo "========================="
    echo " ${title}"
    echo "========================="
}

menu() {
    echo ""
    banner
    echo "1. Check Installed Versions & Devices"
    echo "2. Update & Upgrade System Packages"
    echo "3. Ubuntu Drivers Autoinstall"
    echo "4. Install NVIDIA Drivers & Settings"
    echo "5. Check Graphics / Loaded Modules (lsmod)"
    echo "6. Reboot PC"
    echo "q. Exit/Quit"
    echo "========================="
}

while true; do 
    menu
    read -p "Enter your choice (1-6/q): " choice
    case $choice in
        1)
            echo "====== Checking Hardware & Driver Devices ======"
            ubuntu-drivers devices
            echo ""
            lspci -nnk | grep -i vga -A3
            ;;
        2)
            echo "====== Updating & Upgrading Packages ======"
            sudo apt update && sudo apt upgrade -y
            echo "====== Done Upgrading ======"
            ;;
        3)
            echo "====== Running Drivers Autoinstall ======"
            sudo ubuntu-drivers autoinstall
            echo "====== Done Installing Drivers ======"
            ;;
        4)
            echo "====== Installing NVIDIA Driver & Settings ======"
            sudo apt install nvidia-driver-535 nvidia-settings -y
            echo "====== Done Installing NVIDIA ======"
            ;;
        5)
            echo "====== Checking Loaded Kernel Modules for NVIDIA ======"
            lsmod | grep nvidia
            ;;
        6) 
            echo "Rebooting PC..."
            sudo reboot
            ;;
        q|Q)
            echo "======= Exiting ======"
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose between 1-6 or q."
            ;;
    endcase
done