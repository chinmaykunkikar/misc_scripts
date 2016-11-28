# declarations
SCR="/sdcard/AndroidAssistant_appbackup"
DEST="/data/app/"

# source apks
SADM="$SCR/ADM*.apk"
SCRDEV="$SCR/'Chrome Dev'*.apk"
SCOC="$SCR/'Clash of Clans'*.apk"
SCLRO="$SCR/'Clash Royale'*.apk"
SIG="$SCR/Instagram*.apk"
SMX="$SCR/MX*.apk"
SQP="$SCR/QuickPic*.apk"
SSIT="$SCR/SHAREit*.apk"
SSC="$SCR/Snapchat*.apk"
STW="$SCR/Twitter*.apk"
SWA="$SCR/WhatsApp*.apk"
SXDA="$SCR/XDA*.apk"

# destination folders
DADM="$DEST/com.dv.adm-1/"
DCRDEV="$DEST/com.chrome.dev-1/"
DCOC="$DEST/com.supercell.clashofclans-1/"
DCLRO="$DEST/com.supercell.clashroyale-1/"
DIG="$DEST/com.instagram.android-1/"
DMX="$DEST/com.mxtech.videoplayer.ad-1/"
DQP="$DEST/com.alensw.PicFolder-1/"
DSIT="$DEST/com.lenevo.anyshare.gps-1/"
DSC="$DEST/com.snapchat.android-1/"
DTW="$DEST/com.twitter.android-1/"
DWA="$DEST/com.whatsapp-1/"
DXDA="$DEST/com.xda.labs.play-1/"

# make directories in destination folder
# partially hardcoding temporarily
mkdir -p $DADM
mkdir -p $DCRDEV
mkdir -p $DCOC
mkdir -p $DCLRO
mkdir -p $DIG
mkdir -p $DMX
mkdir -p $DQP
mkdir -p $DSIT
mkdir -p $DSC
mkdir -p $DTW
mkdir -p $DWA
mkdir -p $DXDA

#continue here
