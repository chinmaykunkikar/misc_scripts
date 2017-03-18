#!/sbin/busybox sh
#
# Try redirecting output to recovery output
# OUTFD=/proc/self/fd/$2
#
# Debloat script by @chinmaykunkikar.
#
# Currently only supports AEX 3.+ ROM.
# I'm using OpenGapps Stock package along with AEX 3.+
# Although the Stock package replaces certain /system
# apps in AEX, it still needs to be de-bloated.
#
# Anyone can make this script flashable by running
# it through /tmp (or from anywhere else)
# using chmod 755.
# The same thing can be achieved by running delete_recursive
# in updater-script but I honestly feel that shell
# script is more versatile than edify or updater-script as 
# you can also run it on ter`minal emulators.
#

# Initializations
APPSDIR=/system/app
PRIVAPPSDIR=/system/priv-app

# List of apps to be removed on running the script
# so that I don't miss out on any package:
# AEXOTA (priv-app)
# AEXPapers
# AudioFX
# BasicDreams
# CellBroadcastReceiver (priv-app)
# CloudPrint2
# EditorSheets
# EditorsSlides
# FMRadio (priv-app)
# FitnessPrebuilt
# GoogleHome
# HTMLViewer
# Hangouts
# Music
# Music2
# MusicFX
# Newsstand
# PhotoTable
# Photos
# PrebuiltExchange3Google
# PrebuiltNewsWeather
# Stk
# Videos

# Define array
APP[0]=AEXPapers
APP[1]=BasicDreams
APP[2]=CloudPrint2
APP[3]=EditorSheets
APP[4]=EditorSlides
APP[5]=FitnessPrebuilt
APP[6]=GoogleHome
APP[7]=Hangouts
APP[8]=Music
APP[9]=Music2
APP[10]=Newsstand
APP[11]=PhotoTable
APP[12]=Photos
APP[13]=PrebuiltExchange3Google
APP[14]=PrebuiltNewsWeather
APP[15]=Stk
APP[16]=Videos
PRIVAPP[0]=AEXOTA
PRIVAPP[1]=AudioFX
PRIVAPP[2]=CellBroadcastReceiver
PRIVAPP[3]=FMRadio
PRIVAPP[4]=MusicFX
PRIVAPP[5]=Tag

# Remove packages
echo ""
echo "Removing apps now..."
echo ""
for package in ${APP[*]}
do
    if [ -e ${APP[$package]} ];
    then
        echo "Removing $package"
        rm -fr "${APPSDIR:?}/$package"
    else
        echo "$package not found, skipping..."
    fi
done

echo ""
echo "Removing priv-apps now..."
echo ""
for privpackage in ${PRIVAPP[*]}
do
    if [ -e ${PRIVAPP[$privpackage]} ];
    then
        echo "Removing $privpackage"
        rm -fr "${PRIVAPPSDIR:?}/$privpackage"
    else
        echo "$privpackage not found, skipping...""
    fi
done
