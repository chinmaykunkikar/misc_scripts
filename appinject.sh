#!/system/bin/sh

# declarations
SCR="/sdcard/AndroidAssistant_appbackup"

# source apks
ADM="$SCR/ADM*.apk"
CRDEV="$SCR/'Chrome Dev'*.apk"
COC="$SCR/'Clash of Clans'*.apk"
CLRO="$SCR/'Clash Royale'*.apk"
IG="$SCR/Instagram*.apk"
MX="$SCR/MX*.apk"
QP="$SCR/QuickPic*.apk"
SIT="$SCR/SHAREit*.apk"
SC="$SCR/Snapchat*.apk"
TW="$SCR/Twitter*.apk"
WA="$SCR/WhatsApp*.apk"
XDA="$SCR/XDA*.apk"

# install apks via pm
pm install $ADM
pm install $CRDEV
pm install $COC
pm install $CLRO
pm install $IG
pm install $MX
pm install $QP
pm install $SIT
pm install $SC
pm install $TW
pm install $WA
pm install $XDA
