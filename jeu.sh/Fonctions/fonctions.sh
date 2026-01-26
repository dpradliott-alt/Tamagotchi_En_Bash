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

    curseur_terminal 30 1
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

changement_stats_disciple() {

    if [[ "$bonheur" -ge 5 && "$forme" == "Oeuf Rayé" ]]; then
     forme="Mana"
     ((intelligence+=2))
     ((vitesse+=1))
    elif [[ "$bonheur" -le 4 && "$forme" == "Oeuf Rayé" ]]; then
     forme="Nimera"
     ((force+=3))
     ((vitesse+=1))
     ((intelligence-=1))
    elif [[ "$bonheur" -ge 5 && "$forme" == "Oeuf Tacheté" ]]; then
     forme="Bob" ## Pauvre toi
     ((intelligence+=1))
     ((vitesse+=1))
     ((force+=1))
    elif [[ "$bonheur" -le 4 && "$forme" == "Oeuf Tacheté" ]]; then
     forme="Black-Sad"
     ((intelligence+=1))
     ((vitesse+=3))
     ((force-=1))
    elif [[ "$bonheur" -ge 5 && "$forme" == "Oeuf Carré" ]]; then
     forme="Soldicrab" 
     ((vitesse-=1))
     ((force+=3))
    elif [[ "$bonheur" -le 4 && "$forme" == "Oeuf Carré" ]]; then
     forme="e-belzebuth"
     ((intelligence+=2))
     ((force+=2))
     
    fi
}


afficher_evolution_disciple() {

if [[ "$forme" == "e-belzebuth" ]]; then
  animation_evolution \
  "$ROOT_DIR/Affichage/Eclosion/oeuf_carré_bad/eclosioncarrebad1.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeuf_carré_bad/eclosioncarrebad2.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeuf_carré_bad/eclosioncarrebad3.txt"

elif [[ "$forme" == "Soldicrab" ]]; then
  animation_evolution \
  "$ROOT_DIR/Affichage/Eclosion/oeuf_carré_good/eclosioncarregood1.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeuf_carré_good/eclosioncarregood2.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeuf_carré_good/eclosioncarregood3.txt"

elif [[ "$forme" == "Nimera" ]]; then

  animation_evolution \
  "$ROOT_DIR/Affichage/Eclosion/oeufrayé_bad/eclosionrayébad1.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeufrayé_bad/eclosionrayébad2.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeufrayé_bad/eclosionrayébad3.txt" 

elif [[ "$forme" == "Mana" ]]; then

  animation_evolution \
  "$ROOT_DIR/Affichage/Eclosion/oeufrayé_good/eclosionrayégood1.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeufrayé_good/eclosionrayégood2.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeufrayé_good/eclosionrayégood3.txt"

elif [[ "$forme" == "Black-Sad" ]]; then

  animation_evolution \
  "$ROOT_DIR/Affichage/Eclosion/oeuftachete_bad/eclosiontachetébad1.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeuftachete_bad/eclosiontachetébad2.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeuftachete_bad/eclosiontachetébad3.txt"  

elif [[ "$forme" == "Bob" ]]; then  ## Pauvre Bob

  animation_evolution \
  "$ROOT_DIR/Affichage/Eclosion/oeuftachete_good/eclosiontachetégood1.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeuftachete_good/eclosiontachetégood2.txt" \
  "$ROOT_DIR/Affichage/Eclosion/oeuftachete_good/eclosiontachetégood3.txt"  

fi
}

animation_evolution() {

  local crak1="$1"
  local crak2="$2"
  local disciple="$3"

effacer
echo "Ton oeuf bouge !!! IL CRAAAAAQUE"
cat "$crak1"
sleep 2
effacer
echo "Oh Merde, j'espère c'est pas un T-REX le bordel"
cat "$crak2"
sleep 2
effacer
cat "$disciple"
sleep 2
echo "Whaaaa... Degueulasse.. J'appelle la DAS ?"
sleep 5
effacer
}

donner_a_manger(){
 (($age +=1))
 (($faim -=1))
 (($energie +=1))
}
