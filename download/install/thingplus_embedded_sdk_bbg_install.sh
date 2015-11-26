#!/bin/sh

# Destination directory for Thing+ Gateway
GATEWAY_DIR=./gateway
# Destination directory for Open Hardware SDK
SDK_DIR=.

MODEL="debian"
RSYNC_SERVER="rsync.thingplus.net"
RSYNC_USER="debian_b2d"
RSYNC_PASSWORD="fmLU~e2OhmyKDTj"
RSYNC_SIZE_ONLY_OPTION="false"

thingplus_config_set() {
  cat <<EOF >./config
MODEL=$MODEL
RSYNC_SERVER=$RSYNC_SERVER
RSYNC_USER=$RSYNC_USER
RSYNC_PASSWORD=$RSYNC_PASSWORD
RSYNC_SIZE_ONLY_OPTION=$RSYNC_SIZE_ONLY_OPTION
DEST_DIR=$GATEWAY_DIR
EOF
}

thingplus_install () {
  thingplus_config_set
  wget http://support.thingplus.net/download/install/thingplus_install.sh
  chmod +x ./thingplus_install.sh
  ./thingplus_install.sh b2d
  rm ./thingplus_install.sh
  rm ./config
}

thisplus_openhardware_sdk_install () {
  INSTALL_DIR=$1
  git clone https://github.com/daliworks/openhardware.git $INSTALL_DIR/openhardware
}

thisplus_openhardware_bbg_install () {
  INSTALL_DIR=$1
  BBG_SOURCE_DIR=openhardware/beaglebonegreen/grove-starter-kit/

  cd $INSTALL_DIR/$BBG_SOURCE_DIR;
  npm install
  git clone https://github.com/daliworks/3.Wooden_Lamp_BBG.git 
  git clone https://github.com/daliworks/GrovePi.git 
  cd -
}

bbg_uart2gpio() {
  sed -i 's/cape_enable=capemgr.enable_partno=BB-UART2/\#cape_enable=capemgr.enable_partno=BB-UART2/g' /boot/uEnv.txt
}

########## START ##########

thingplus_install

if [ ! -d $SDK_DIR ]; then
  mkdir -p $SDK_DIR
fi

thisplus_openhardware_sdk_install $SDK_DIR
thisplus_openhardware_bbg_install $SDK_DIR
bbg_uart2gpio

echo 'Installation is finished'
echo 'Please Reboot'
