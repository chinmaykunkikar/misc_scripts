#!/bin/bash

#Definitions
FIRACODE_NAME=FiraCode_1.204.zip
FIRACODE_URL='https://github.com/tonsky/FiraCode/releases/download/1.204/FiraCode_1.204.zip';
DOWNLOAD_DIR=~/Downloads/firacode;
INSTALL_DIR=/usr/share/fonts/firacode/;

reset && echo -e "FiraCode installation script\n";

#Sanity checks
sanity_checks() {
if [ -d $DOWNLOAD_DIR ]
then
echo "- Removing working directories";
rm -fr $DOWNLOAD_DIR;
fi
}
sanity_checks;

#Download and install FiraCode
echo "- Initializing";
mkdir -p $DOWNLOAD_DIR;
mkdir -p $INSTALL_DIR;
sleep 2;

echo "- Downloading FiraCode from GitHub";
cd $DOWNLOAD_DIR && wget --no-check-certificate $FIRACODE_URL > /dev/null 2>&1;

echo "- Unzipping";
unzip $DOWNLOAD_DIR/$FIRACODE_NAME > /dev/null 2>&1;

echo "- Installing FiraCode";
cp $DOWNLOAD_DIR/ttf/* $INSTALL_DIR;
sleep 2;

#Remove working directories
sanity_checks;

echo -e "- Done\n";
