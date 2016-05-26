#!/bin/sh

# fortune destination folder
dest=/usr/share/games/fortunes

for file in chuck-norris douglas-adams
do
    echo "Building fortune for $file"
    /usr/sbin/strfile $file
    ln $file $dest/$file -vf
    ln $file.dat $dest/$file.dat -vf
done
