# Manjaro yadm bootstrapper

## Standalone bootstrap command for a Manjaro XFCE install:
`sh -c "$(wget -O- https://raw.githubusercontent.com/aa-ko/manjaro-yadm/master/.config/yadm/setup.sh)"`

## Dependencies
- sh
- wget
- pacman

## TODO
- Test this in a new Manjaro install (created on 5.3.8-3)
- Add Thunderbird account settings
- Choose optional dependencies for pamac packages
- Run pamac in unattended mode
- Find a way to have to put in the password less often ?