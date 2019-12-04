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
- [ ] Install fuck and add alias to .zshrc
