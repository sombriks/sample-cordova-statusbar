#!/bin/sh

[ $1 ] || echo "tell me the input icon image file"

[ $1 ] || exit 1

[ -f $1 ] || echo "input [$1] is not there"

[ -f $1 ] || exit 1

echo "resizing [$1] to generate ios icons"

# ios icons
for i in \
"-resize 57x57   ios/icon.png"          \
"-resize 114x114 ios/icon@2x.png"       \
"-resize 29x29   ios/icon-small.png"    \
"-resize 58x58   ios/icon-small@2x.png" \
"-resize 87x87   ios/icon-small@3x.png" \
"-resize 40x40   ios/icon-40.png"       \
"-resize 80x80   ios/icon-40@2x.png"    \
"-resize 120x120 ios/icon-40@3x.png"    \
"-resize 50x50   ios/icon-50.png"       \
"-resize 100x100 ios/icon-50@2x.png"    \
"-resize 60x60   ios/icon-60.png"       \
"-resize 120x120 ios/icon-60@2x.png"    \
"-resize 180x180 ios/icon-60@3x.png"    \
"-resize 72x72   ios/icon-72.png"       \
"-resize 144x144 ios/icon-72@2x.png"    \
"-resize 76x76   ios/icon-76.png"       \
"-resize 152x152 ios/icon-76@2x.png"    \
"-resize 167x167 ios/icon-83.5@2x.png"  \
"-resize 120x120 ios/icon-120.png"  
do
  echo "$1 $i"
  convert $1 $i 
done
