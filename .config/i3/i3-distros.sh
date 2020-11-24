#!/bin/bash
distro=$(uname -a)
if [[ $distro == *gentoo* ]] 
then
echo "gentoo"
elif [[ $distro == *MANJARO* ]]
then
pamac-tray &
xautolock -time 10 -locker blurlock &
ff-theme-util &
fix_xcursor &
autotiling &
else
echo "error"
fi
