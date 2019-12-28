# Manjaro yadm bootstrapper

## Standalone bootstrap command for a Manjaro XFCE install:
`sh -c "$(wget -O- https://raw.githubusercontent.com/aa-ko/manjaro-yadm/master/.config/yadm/setup.sh)"`

## Dependencies
- sh
- sudo
- wget
- pacman
- xargs

## TODO
- [ ] Move this repo to a private Gitea server
- [ ] Test this in a new Manjaro install (created on 5.3.8-3)
- [ ] Install & configure Evolution mail client and ditch Thunderbird afterwards
  - [ ] Import Google contacts into Evolution ?
- [ ] Choose optional dependencies for pamac packages
- [ ] Run pamac in unattended mode
- [ ] Find a way to have to put in the password less often ?
- [ ] Add a LaTeX distribution installation and settings (Gummi, TexStudio)
- [ ] Download, build and install KeePass plugins in bootstrap script
  - [ ] Concept for automatic generation of ssh config file from KeePass
- [ ] Install and activate VS Code plugins and themes
- [ ] Install wireguard and pull client config from encrypted files.gpg
  - [ ] Setup network interface namespaces and force all traffic through wg
- [ ] Install fuck and add alias to .zshrc
- [ ] Install polybar
  - [ ] Install required fonts (ttf-material-icons) and refresh font cache
  - [ ] Add 'Material Icons' to VS Code fonts
  - [ ] Test ethernet interface display
  - [ ] Deploy different polybar configs per machine
  - [ ] Create custom script to display Telegram notifications ([polybar-scripts](https://github.com/polybar/polybar-scripts))
- [ ] Install Hexchat
  - [ ] set colors and preferences
  - [ ] Add Freenode and hackint channels