#!/bin/bash
form=" ␖ {{ trunc(artist,20) }} - {{trunc(title,20) }}"
statu=$(playerctl status)
lene=${#statu}
echo -n $statu 
npf="No players found"
if [ "$statu" != "$npf" ]
then
  playerctl metadata --format "$form" 	
else
  echo -n
fi


