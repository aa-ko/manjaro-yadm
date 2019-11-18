#!/bin/sh

# Manjaro bootstrap 1.0
# 2019-11-11 1522
# Aaron Korte <github@aaronkorte.xyz>

YADMBS_USER=$(whoami)

# source: https://stackoverflow.com/a/3980713
function storepw() {
    stty -echo
    printf "Password for user '$YADMBS_USER': "
    read YADMBS_PASSWORD
    stty echo
    printf "\n"
}

# install and initialize yadm
# https://yadm.io/
pamac build --no-confirm yadm
cd "$HOME"
yadm clone --bootstrap https://github.com/aa-ko/manjaro-yadm.git


function teardown() {
    # Do we need this? Try it!
}

function callwithpw() {
    # Implement calling several tools with stored user password
}

function main() {
    printf "Running Manjaro Linux bootstrapper 1.0\n"

    storepw

    # install pamac
    printf "Install pamac..\n"
    printf $YADMBS_PASSWORD | xargs pacman -Syu pamac-gtk pamac-cli

    # install yadm prerequisites
    printf "Install yadm prerequisites..\n"
    pamac install git wget curl bash

    # install and initialize yadm
    # https://yadm.io/
    printf "Install yadm..\n"
    pamac install yadm
    cd "$HOME"
    printf "Clone yadm repo and call bootstrapper..\n"
    yadm clone --bootstrap https://github.com/aa-ko/manjaro-yadm.git
}

main

# TODO: Add trap to execute teardown on error ?
