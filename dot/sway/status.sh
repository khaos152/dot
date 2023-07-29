#!/bin/bash

date=$(date +'📅 %a %Y-%m-%d 🕛 %H:%M:%S')

mute=$(pamixer --get-mute)

if [ $mute = "true" ] ; then
	speaker="🔇"
else
	speaker="🔊"
fi

volume=$(pamixer --get-volume)

echo $speaker $volume $date
