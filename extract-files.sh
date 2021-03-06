#!/bin/bash

BASEDIR=`dirname $0`

set -e
export DEVICE=204hw
export VENDOR=huawei

if [ $# -eq 0 ]; then
  SRC=adb
else
  if [ $# -eq 1 ]; then
    SRC=$1
  else
    echo "$0: bad number of arguments"
    echo ""
    echo "usage: $0 [PATH_TO_EXPANDED_ROM]"
    echo ""
    echo "If PATH_TO_EXPANDED_ROM is not specified, blobs will be extracted from"
    echo "the device using adb pull."
    exit 1
  fi
fi

function extract() {
    for FILE in `egrep -v '(^#|^$)' $1`; do
      OLDIFS=$IFS IFS=":" PARSING_ARRAY=($FILE) IFS=$OLDIFS
      FILE=`echo ${PARSING_ARRAY[0]} | sed -e "s/^-//g"`
      DEST=${PARSING_ARRAY[1]}
      if [ -z $DEST ]
      then
        DEST=$FILE
      fi
      _BASE=$2
      DIR=`dirname $DEST`
      if [ ! -d $_BASE/$DIR ]; then
        mkdir -p $_BASE/$DIR
      fi
      # Try CM target first
      if [ "$SRC" = "adb" ]; then
        adb pull /system/$DEST $_BASE/$DEST
        # if file does not exist try OEM target
        if [ "$?" != "0" ]; then
            adb pull /system/$FILE $_BASE/$DEST
        fi
      else
        if [ -z $SRC/system/$DEST ]; then
            echo ":: $DEST"
            cp $SRC/system/$DEST $_BASE/$DEST
        else
            echo ":: $FILE"
            cp $SRC/system/$FILE $_BASE/$DEST
        fi
      fi
    done
}

BASE=$BASEDIR/../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

extract $BASEDIR/../../$VENDOR/$DEVICE/proprietary-files.txt $BASE

extract $BASEDIR/../../$VENDOR/$DEVICE/proprietary-files-recovery.txt $BASEDIR/../../$VENDOR/$DEVICE/recovery/root/vendor
find $BASEDIR/../../$VENDOR/$DEVICE/recovery/root/vendor/bin -type f | xargs sed -i -e 's/\/system\/bin/\/vendor\/bin/g'

$BASEDIR/setup-makefiles.sh
