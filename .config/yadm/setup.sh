#!/bin/sh

# Manjaro bootstrap 1.0
# 2019-11-11 1522
# Aaron Korte <github@aaronkorte.xyz>

# install pamac
pacman -Syu pamac-gtk pamac-cli

# install yadm prerequisites
pamac install git wget curl bash

# install and initialize yadm
# https://yadm.io/
pamac build yadm
cd "$HOME"
yadm clone --bootstrap https://github.com/aa-ko/manjaro-yadm.git
