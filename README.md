# Pywal16 templates
Use the templates when running [pywal16](https://github.com/eylles/pywal16) w/ 16 color bits. The templates need to be put in your user's wal config directory, under "templates". Path would look something like "~/.config/wal/templates". Then you can copy the colorscheme and then set it.

More info on templates: https://github.com/eylles/pywal16/wiki/User-Template-Files

# pywal-plasma-script
This script can be run after a pywal script, and is a rough stab at making a plasma color theme file from your pywal output cache files, specifically the one for konsole.
When you run it, it takes an argument as an input. The argument should be the name of the file you want to create, with the program adding a .colors to the end.
After running the script, simply open System Settings, go to appearance, then colors. Then click Install From File, naviage to ~/.local/share/color-schemes/ and find your .colors file you made. Open and apply it, and voila! You can even tweak the colors from the file here, and reimport your exported program file again later.