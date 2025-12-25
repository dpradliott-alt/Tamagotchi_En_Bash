#!/bin/bash

source ../Fonctions/fonctions.sh
source ../Fonctions/stats.sh

echo " Tu as trouvé trois oeufs dans les bois. Il va falloir s'en occuper d'un, les autres à la poubelle... "
echo
echo
sleep 1
read -p "Quel est le nom de ta créature ? " nom

while [[ -z "$nom" ]]; do

echo "Tu n'as pas choisi de nom pour ta créature, recommence banane ! "
echo
sleep 2
read -p "Quel est le nom de ta créature ? " nom

done
echo
echo "Ok sympa comme nom $nom..."
echo 
sleep 1
# echo "fichier ASCII" mettre les ASCII des oeufs ici avec les nombre de 1 à 3
afficher_oeufs
echo
read -p "Choisi un de ces oeufs, au diable les deux autres (1, 2 ou 3 ?)  " choixoeuf

fct_choix_oeuf
sleep 1
echo
echo "Oeuf choisi = $forme"
