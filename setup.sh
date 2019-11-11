#!/bin/sh

# Manjaro bootstrap 1.0
# 2019-11-11 1522
# Aaron Korte <github@aaronkorte.xyz>

# Install pamac
pacman -Syu pamac-gtk pamac-cli

# yadm prerequisites
pamac install git wget curl bash

# Install and initialize yadm
pamac install yadm
cd "$HOME"
yadm clone --bootstrap https://github.com/aa-ko/manjaro-yadm.git
