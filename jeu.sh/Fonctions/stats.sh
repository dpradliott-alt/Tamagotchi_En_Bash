
faim=0
age=0
bonheur=5
sale=0
vivant=1
energie=5
force=1
vitesse=1
intelligence=1

afficher_stats_oeuf() {

echo
    echo "🐣 $nom"
    echo "Âge      : $age"
    echo "Faim     : $faim"
    echo "Énergie  : $energie"
    echo "Bonheur  : $bonheur"
    echo "Force : $force"
	echo "Vitesse : $vitesse"
    echo "Intelligence : $intelligence"
    echo
}

##HUD

barre() {
  local valeur="$1"
  local max="$2"
  local largeur="$3"

  local remplis=$(( valeur * largeur / max ))
  local vides=$(( largeur - remplis ))

  printf "%0.s█" $(seq 1 "$remplis")
  printf "%0.s░" $(seq 1 "$vides")
}




curseur_terminal(){
printf '\033[%d;%dH' "$1" "$2"
}

ecris_a(){
    local l="$1" ; col="$2" ; texte="$3"
    curseur_terminal "$l" "$col"
    printf "%s" "$texte"
}

affiche_stats(){
    local l="$1" ; col="$2" ; larg="$3" ; valeur="$4"
    curseur_terminal "$l" "$col"
    printf "%-*s" "$larg" "$valeur"
}

ecran_hud() {
     
    ecris_a 20 1  "╔══════════════════════╗"
    ecris_a 21 1  "║        STATS         ║"
    ecris_a 22 1  "╠══════════════════════╣"
    ecris_a 23 1  "║ Nom      :           ║"
    ecris_a 24 1  "║ Age      :           ║"
    ecris_a 25 1  "║ Bonheur  :           ║"
    ecris_a 26 1  "║ Energie  :           ║"
    ecris_a 27 1  "║ Faim     :           ║"
    ecris_a 28 1  "╚══════════════════════╝"
}

hud_update() {
    affiche_stats 23 14 12 "$nom"
    affiche_stats 24 14 12 "$age"
    affiche_stats 25 14 12 "$bonheur"
    # Energie (barre)
    curseur_terminal 26 14
    barre "$energie" 10 10
    # Faim (barre)
    curseur_terminal 27 14
    barre "$faim" 10 10
}