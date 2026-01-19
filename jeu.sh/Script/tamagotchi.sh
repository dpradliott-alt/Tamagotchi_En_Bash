#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
source "$ROOT_DIR/Fonctions/stats.sh"
source "$ROOT_DIR/Fonctions/fonctions.sh"

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
afficher_oeufs
echo
sleep 1
read -p "Choisi un de ces oeufs, au diable les deux autres (1, 2 ou 3 ?)  " choixoeuf

fct_choix_oeuf
sleep 1
echo
echo "Oeuf choisi = $forme"
changements_stats_oeuf


sleep 1.5

while (( $age<=2 )); do
 
 afficher_menu_oeuf
 sleep 1
 menu_oeuf
 afficher_stats_oeuf
 sleep 2
 
done

