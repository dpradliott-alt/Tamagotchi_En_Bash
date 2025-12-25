#!/bin/bash


read -p "Quel est le nom de ta créature ? " nom

while [[ -z "$nom" ]]; do

echo "Tu n'as pas choisi de nom pour ta créature, recommence banane ! "
echo
sleep 2
read -p "Quel est le nom de ta créature ? " nom

done




