#! /bin/bash

# MPD/MPC by olshrimpeyes, reconfigured by DaRk_dOg

nowplaying=`mpc | grep - | sed -e 's/\&/&amp;/g'`
playing=`mpc | grep playing `

echo "<openbox_pipe_menu>"
echo "<item label=\"Ncmpcpp\"><action name=\"Execute\"><execute>urxvt -e ncmpcpp</execute></action></item>"
echo "<separator/>"
if  [[ -z $nowplaying ]]

then

echo "<item label=\"Not Playing\"><action name=\"Execute\"><execute>mpc</execute></action></item>"

else

echo "<item label=\""$nowplaying"\"><action name=\"Execute\"><execute>mpc</execute></action></item>"

if [[ -z $playing ]]

then

echo "<item label=\"Paused\"><action name=\"Execute\"><execute>mpc</execute></action></item>"

else

echo "<item label=\""$playing"\"><action name=\"Execute\"><execute>mpc</execute></action></item>"

fi

fi

echo "<separator/>"

if [[ -z $playing ]]

then

echo "<item label=\"Play\"><action name=\"Execute\"><execute>mpc play</execute></action></item>"

else

echo "<item label=\"Pause\"><action name=\"Execute\"><execute>mpc pause</execute></action></item>"
echo "<item label=\"Stop\"><action name=\"Execute\"><execute>mpc stop</execute></action></item>"

fi

echo "<item label=\"Next\"><action name=\"Execute\"><execute>mpc next</execute></action></item>"
echo "<item label=\"Previous\"><action name=\"Execute\"><execute>mpc prev</execute></action></item>"
echo "<item label=\"Volume\"><action name=\"Execute\"><execute>urxvt -e alsamixer</execute></action></item>"
echo "</openbox_pipe_menu>"