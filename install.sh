#!/bin/sh

product=MsFontsCollectionV2
log=install.log

ls -1c -v ./Fonts.tar.xz.part* | xargs -I {} cat {} >> ./Fonts.tar.xz
tar -v -xf ./Fonts.tar.xz

mkdir -v /usr/share/fonts/opentype/$product
mkdir -v /usr/share/fonts/truetype/$product
cp -v ./Fonts/otf/*.otf /usr/share/fonts/opentype/$product/
cp -v ./Fonts/ttf/*.ttf /usr/share/fonts/truetype/$product/
chown -v root:root /usr/share/fonts/opentype/$product
chown -v root:root /usr/share/fonts/truetype/$product
chown -v root:root /usr/share/fonts/opentype/$product/*.otf
chown -v root:root /usr/share/fonts/truetype/$product/*.ttf
chmod -v 755 /usr/share/fonts/opentype/$product
chmod -v 755 /usr/share/fonts/truetype/$product
chmod -v 644 /usr/share/fonts/opentype/$product/*.otf
chmod -v 644 /usr/share/fonts/truetype/$product/*.ttf
fc-cache -fv
