#!/usr/bin/bash

#this script can be run after running pywal16, it'll apply the generated
#plasma colorscheme using plasma-apply-colorscheme!

if [ -f "~/.cache/wal/modded_breeze.colors" ]; then
    mkdir -p ~/.local/share/color-schemes/
    cp ~/.cache/wal/modded_breeze.colors ~/.local/share/color-schemes/
    #apply breeze dark just in case modded breeze is already selected
    #because otherwise it won't apply the new theme
    plasma-apply-colorscheme BreezeDark
    plasma-apply-colorscheme modded_breeze
    echo "Applied pywal16 theme!"
elif [ -f "~/.cache/wal/kde.colors" ]; then
    mkdir -p ~/.local/share/color-schemes/
    cp ~/.cache/wal/kde.colors ~/.local/share/color-schemes/
    #apply breeze dark just in case kde is already selected
    #because otherwise it won't apply the new theme
    plasma-apply-colorscheme BreezeDark
    plasma-apply-colorscheme kde
    echo "Applied backup pywal16 theme!"
else
    echo "Didn't find modded_breeze or kde colors files"
fi
