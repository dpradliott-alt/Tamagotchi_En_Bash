#!/bin/bash

fct_choix_oeuf() {

while true; do

    case "$choixoeuf" in

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

done

}
