#!/bin/bash

effacer() { printf "\033[2J\033[H"; }

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
echo "rechauffe toi!"
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
    read -p "Choix (1 = couver, 2 = insulter) : " choix_me

    case "$choix_me" in
        1) Couver_oeuf ;;
        2) Insulter_oeuf ;;
        *)
            echo "Choix invalide (1 ou 2)."
            sleep 1
            ;;
    esac
}

afficher_animation() {
  local normal="$1"
  local droite="$2"
  local gauche="$3"

  for _ in {1..4}; do
    effacer
    cat "$gauche"
    sleep 0.3

    effacer
    cat "$droite"
    sleep 0.3
  done

  effacer
  cat "$normal"
}

afficher_menu_oeuf() {
  if [[ "$forme" == "Oeuf Tacheté" ]]; then
    afficher_animation \
      $ROOT_DIR/Affichage/menu_oeuftacheté/menu_oeuftacheté.txt \
      $ROOT_DIR/Affichage/menu_oeuftacheté/menu_oeuftachetédroite.txt \
      $ROOT_DIR/Affichage/menu_oeuftacheté/menu_oeuftachetégauche.txt

  elif [[ "$forme" == "Oeuf Rayé" ]]; then
    afficher_animation \
      $ROOT_DIR/Affichage/menu_oeufrayé/menu_oeufrayé.txt \
      $ROOT_DIR/Affichage/menu_oeufrayé/menu_oeufrayédroite.txt \
      $ROOT_DIR/Affichage/menu_oeufrayé/menu_oeufrayégauche.txt

  else
    afficher_animation \
      $ROOT_DIR/Affichage/menu_oeufcarré/menu_oeufcarré.txt \
      $ROOT_DIR/Affichage/menu_oeufcarré/menu_oeufcarrédroite.txt \
      $ROOT_DIR/Affichage/menu_oeufcarré/menu_oeufcarrégauche.txt
  fi
}

afficher_oeufs() {

    cat $ROOT_DIR/Affichage/oeufs.txt
}

changements_stats_oeuf() {

    if [[ "$forme" == "Oeuf Tacheté" ]]; then
        ((intelligence-=1))
        ((force+=2))

    elif [[ "$forme" == "Oeuf Rayé" ]]; then
        ((force-=1))
        ((intelligence+=2))

    else
        ((vitesse+=1))
    fi
}