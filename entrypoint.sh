#!/bin/bash

echo "Removing /tmp/.X1-lock, if existing"
rm /tmp/.X1-lock

echo "Correcting mount point permissions ..."
chown "$SINUS_USER":"$SINUS_GROUP" -R "$SINUS_DATA"

echo "Checking for TeamSpeak SinusBot Updates ..."
sudo -u "$SINUS_USER" "$SINUS_DIR/ts3bot" -update

echo "Starting TeamSpeak SinusBot ..."
sudo -u "$SINUS_USER" ./"$SINUS_DIR/sinusbot"
echo "exiting"
