#!/bin/bash

source ../Fonctions/stats.sh

fct_choix_oeuf() {

while true; do

    case "$choixoeuf" in

        1) 
        echo "Tu as donc choisi celui là." 
        forme="Oeuf Tacheté"
        break
        ;;
        2) 
        echo "Tu as donc choisi celui là."
        forme="Oeuf Rayé"
        break
        ;;
        3) 
        echo "Tu as donc choisi celui là."
        forme="Oeuf Carré"
        break
        ;;
        *) echo "Choisi entre 1, 2 ou 3"
        read -p "Choisi un de ces oeufs, au diable les deux autres" choixoeuf
        ;;

    esac

done

}

Couver_oeuf(){

((bonheur+=1))
((age+=1))
echo "et voilà, rechauffe toi sous mon cul !"
echo
echo "$nom se sent au chaud"
echo

}

Insulter_oeuf(){

((bonheur-=1))
((age+=1))
echo "$!P% j'aime pas cet enfant"
echo
sleep 1
echo " $nom s'en souviendra..."
echo
sleep 1

}





menu_oeuf() {

read -p "que veux-tu faire? 1- Couver l'oeuf | 2- Insulter l'oeuf " choix_me

    case "$choix_me" in

        1) Couver_oeuf
         ;;
        2) Insulter_oeuf 
         ;;
        *) echo "T'as que 1 ou 2 comme choix l'ami, on est pas dans un JDR ! "
             ;;
    esac

}

afficher_oeufs() {

    cat ../Affichage/oeufs.txt
}