#!/bin/bash

setDisplay(){

	local position=$1
	xrandr --output HDMI1 --$position eDP1
	return
}

cat<<END
This Script uses xrandr to display an additional moniter for i3wm

Above = a
Below = b
Left  = l
Right = r
Quit  = q

END

ABOVE="a"
BELOW="b"
LEFT="l"
RIGHT="r"
QUIT="q"

running=1

while [ $running == 1 ]
do
	read -p "Choose (a,b,l,r,q): " position

	if [ "$position" == "$ABOVE" ]
	then
		$(setDisplay "above")
	elif [ "$position" == "$BELOW" ]
	then
		$(setDisplay "below")
	elif [ "$position" == "$LEFT" ]
	then
		$(setDisplay "left-of")
	elif [ "$position" == "$RIGHT" ]
	then
		$(setDisplay "right-of")
	elif [ "$position" == "$QUIT" ]
	then
		exit
	else
		echo "ERROAR: valid option not selected"
	fi
done
