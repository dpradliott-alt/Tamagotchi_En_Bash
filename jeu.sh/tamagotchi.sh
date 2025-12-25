#!/bin/bash


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
read -p "Choisi un de ces oeufs, au diable les deux autres" choixoeuf

fct_choix_oeuf
sleep 1
echo
echo "Oeuf choisi = $forme"



fct_choix_oeuf() {

while true; do

case $choixoeuf in

1) # echo "ASCII oeuf 1"
    echo "Tu as donc choisi celui là." 
    forme="oeuf1"
    break
    ;;
2) # pareil oeuf 2
    echo "Tu as donc choisi celui là."
    forme="oeuf2"
    break
    ;;
3) # pareil oeuf 3
    echo "Tu as donc choisi celui là."
    forme="oeuf3"
    break
    ;;
*) echo "Choisi entre 1, 2 ou 3"
    read -p "Choisi un de ces oeufs, au diable les deux autres" choixoeuf
    ;;

esac


}

