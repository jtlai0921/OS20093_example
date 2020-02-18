#!/bin/sh
# ftp://ftp-cnpa.yzu.edu.tw/pub/YZU/CFC/cfc/liu55/liu55.sh
if [ ! -f /usr/X11R6/etc/xcinrc.orig ]; then
echo "CFC Patching : xcin for liu55"
cp liu55.cin /usr/X11R6/lib/X11/xcin25/tab/big5/
cp liu55.tab /usr/X11R6/lib/X11/xcin25/tab/big5/
cp xcinrc.patch /usr/X11R6/etc
cd /usr/X11R6/etc/
/usr/bin/patch < xcinrc.patch
fi
