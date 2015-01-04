#!/bin/sh
VENDOR=huawei
DEVICE=204hw
BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Copying device files..."

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  cp $1/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
