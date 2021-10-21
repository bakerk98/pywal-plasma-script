#!/bin/bash
#move pywal generated colors to a kde colorscheme, names the color scheme after the first given argument
#to be run after pywal

background=$(grep -A 1 Background] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)
foreground=$(grep -A 1 Foreground] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)

color0=$(grep -A 1 Color0Intense] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)
color1=$(grep -A 1 Color1] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)
color2=$(grep -A 1 Color2] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)
color3=$(grep -A 1 Color3] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)
color4=$(grep -A 1 Color4] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)
color5=$(grep -A 1 Color5] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)
color6=$(grep -A 1 Color6] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)
color7=$(grep -A 1 Color7] ~/.cache/wal/colors-konsole.colorscheme | sed -r 's#.*=##' | tail -n 1)

name=$1 #take input for a name to be used for the colorscheme
echo "
[ColorEffects:Disabled]
Color=$background
ColorAmount=0
ColorEffect=3
ContrastAmount=0.55
ContrastEffect=1
IntensityAmount=-1
IntensityEffect=0

[ColorEffects:Inactive]
ChangeSelectionColor=true
Color=$background
ColorAmount=0
ColorEffect=0
ContrastAmount=0
ContrastEffect=0
Enable=false
IntensityAmount=-1
IntensityEffect=0

[Colors:Button]
BackgroundAlternate=$color0
BackgroundNormal=$background
DecorationFocus=$color3
DecorationHover=$color3
ForegroundActive=$color3
ForegroundInactive=$color0
ForegroundLink=$color3
ForegroundNegative=$color2
ForegroundNeutral=$color6
ForegroundNormal=$foreground
ForegroundPositive=$color5
ForegroundVisited=$color0

[Colors:Selection]
BackgroundAlternate=$color3
BackgroundNormal=$color3
DecorationFocus=$color3
DecorationHover=$color3
ForegroundActive=$background
ForegroundInactive=$color0
ForegroundLink=$color3
ForegroundNegative=$color2
ForegroundNeutral=$color6
ForegroundNormal=$foreground
ForegroundPositive=$color5
ForegroundVisited=$color0

[Colors:Tooltip]
BackgroundAlternate=$color0
BackgroundNormal=$background
DecorationFocus=$color3
DecorationHover=$color3
ForegroundActive=$color3
ForegroundInactive=$color0
ForegroundLink=$color3
ForegroundNegative=$color2
ForegroundNeutral=$color6
ForegroundNormal=$foreground
ForegroundPositive=$color5
ForegroundVisited=$color0

[Colors:View]
BackgroundAlternate=$color0
BackgroundNormal=$background
DecorationFocus=$color3
DecorationHover=$color3
ForegroundActive=$color3
ForegroundInactive=$color0
ForegroundLink=$color3
ForegroundNegative=$color2
ForegroundNeutral=$color6
ForegroundNormal=$foreground
ForegroundPositive=$color5
ForegroundVisited=$color0

[Colors:Window]
BackgroundAlternate=$color0
BackgroundNormal=$background
DecorationFocus=$color3
DecorationHover=$color3
ForegroundActive=$color3
ForegroundInactive=$color0
ForegroundLink=$color3
ForegroundNegative=$color2
ForegroundNeutral=$color6
ForegroundNormal=$foreground
ForegroundPositive=$color5
ForegroundVisited=$color0

[General]
ColorScheme=$1
Name=$1
shadeSortColumn=true

[KDE]
contrast=5

[WM]
activeBackground=$color3
activeBlend=$color3
activeForeground=$foreground
inactiveBackground=$color0
inactiveBlend=$color0
inactiveForeground=$color7" > ~/.kde4/share/apps/color-schemes/$1.colors
echo "Made a plasma color scheme at ~/.kde4/share/apps/color-schemes/$1.colors"
echo "Don't forget to add it! System Settings -> Appearance -> Colors -> Install from File"
