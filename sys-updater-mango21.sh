#!/bin/bash

## Mango21 Updater! Yayyy!
## Script works only on Arch/Arch-based distros.

readonly DOTS_REPO="https://github.com/Lynndroid21/Mango21"
readonly DOTS_NAME="Mango21"
readonly DOTS_INSTALL_DIR="$HOME/.config"
readonly PATH_TO_GIT_CLONE="$HOME/$DOTS_NAME"
readonly PATH_TO_ROFI_THEMES="$HOME/.local/share/rofi/themes"

DotsUpd() {
    echo "Next, we'll update the dotfiles!~"
    echo ""
    read -p "Do you wanna backup your configs? (Y/n): " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo mkdir $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/btop $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/cava $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/fish $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/kitty $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/swaync $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/mango $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/rofi $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/wal $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/waybar $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/waypaper $DOTS_INSTALL_DIR/backup
        command cp -r -v -i $DOTS_INSTALL_DIR/wlogout $DOTS_INSTALL_DIR/backup
    fi
    echo ""
    echo "Now we're gonna redownload the dots....~"
    echo ""
    install_M21dots
}

install_M21dots() {
    git clone $DOTS_REPO
    echo ""
    echo "Now copying them over....~"
    echo ""
    sleep 2
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/btop $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/cava $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/fish $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/kitty $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/swaync $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/mango $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/rofi $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/wal $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/waybar $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/waypaper $DOTS_INSTALL_DIR
    command cp -r -v -i $PATH_TO_GIT_CLONE/configs/wlogout $DOTS_INSTALL_DIR
    command cp -v -i $PATH_TO_GIT_CLONE/configs/background.png $DOTS_INSTALL_DIR
    command cp -v -i $PATH_TO_GIT_CLONE/configs/starship.toml $DOTS_INSTALL_DIR
    command cp -v -i $PATH_TO_GIT_CLONE/configs/Arch21-default.rasi $PATH_TO_ROFI_THEMES

    info "All the configs are fully Updated! Yay~"
    sleep 4
    command clear
    sleep 1
}

globUpd() {
    read -p "Updater Loaded! Ready, $USER? (Y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
    Upd_promM21() {
        echo "Time to get $HOSTNAME fully updated!~"
        local mgr=$(for m in pacman xbps dnf zypper apt; do command -v $m &>/dev/null && { echo ${m%%-*}; break; }; done)

        case $mgr in
            pacman) sudo pacman -Syu ;;
            dnf) sudo dnf update ;;
            zypper) sudo zypper update ;;
            xbps) sudo xbps-install -Su ;;
            apt) sudo apt upgrade ;;
            *) error "Sorry hun! We have no idea what package manager this is...."; return 1 ;;
        esac
    }
    Upd_promM21
    updcomp=true
    else
    if [[ $REPLY =~ ^[Nn]$ ]]; then
        sleep 2
        echo ""
        echo "No worries, hun! Have a good day!"
        sleep 4
        command clear
        command exit
        fi
    fi
}

# Prompt restart
M21_rb() {
    if $updcomp = true; then
        echo "You may have some important stuff to reload!"
        echo ""
        read -p "Wanna restart your system, babe? (Y/n): " -n 1 -r
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            echo ""
            command reboot
        else
            echo ""
            echo "Just be sure to restart later, okay?~" && sleep 4 && echo "3...2..1.~ And Done!"
        fi
    fi
}

# -----------------------------------------------------------------------------------------------------------------------

echo " _____                                                                _____ ";
echo "( ___ )                                                              ( ___ )";
echo " |   |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   | ";
echo " |   |                                                                |   | ";
echo " |   |                                                                |   | ";
echo " |   |   ░█▄█░█▀█░█▀█░█▀▀░█▀█░▀▀▄░▀█░░░░█░█░█▀█░█▀▄░█▀█░▀█▀░█▀▀░█▀▄   |   | ";
echo " |   |   ░█░█░█▀█░█░█░█░█░█░█░▄▀░░░█░░░░█░█░█▀▀░█░█░█▀█░░█░░█▀▀░█▀▄   |   | ";
echo " |   |   ░▀░▀░▀░▀░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░░░▀▀▀░▀░░░▀▀░░▀░▀░░▀░░▀▀▀░▀░▀   |   | ";
echo " |   |                                                                |   | ";
echo " |   |                                                                |   | ";
echo " |___|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|___| ";
echo "(_____)                                                              (_____)";
echo ""
echo "Updating.... Gimme a second, babe!~"

sleep 4

globUpd

echo ""

DotsUpd

sleep 1

M21_rb

sleep 2

echo "all set bb!"

sleep 4

command clear

echo exit
