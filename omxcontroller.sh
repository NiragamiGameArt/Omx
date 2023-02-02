#!/bin/bash

# Définissez le chemin vers vos vidéos
video1="video/video1.mp4"
video2="video/video2.mp4"
video3="video/video3.mp4"
video4="video/video4.mp4"

# Boucle infinie pour lire les entrées de boutons
while true; do
  read -r event < /dev/input/event4
  if [ "$event" == "BTN_TRIGGER" ]; then
    omxplayer $video1
  elif [ "$event" == "BTN_THUMB" ]; then
    omxplayer $video2
  elif [ "$event" == "BTN_THUMB2" ]; then
    omxplayer $video3
  elif [ "$event" == "BTN_TOP" ]; then
    omxplayer $video4
  fi
done
