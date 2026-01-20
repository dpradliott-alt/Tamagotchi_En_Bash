# Tamagotchi Bash (Digimon-like)

Un mini-jeu rétro en Bash, inspiré des Tamagotchi et de l'évolution
des créatures façon Digimon (œuf → disciple → formes futures).

Ce projet est avant tout un **projet d’apprentissage**, orienté
logique de jeu, scripting Bash.

---

## Concept & Gameplay

- Le joueur choisit un **nom** et un **œuf**
- Chaque œuf possède des **stats de départ différentes** (Force, Intelligence, Vitesse)
- Le joueur interagit avec l'œuf (couver, provoquer, etc.)
- Les actions influencent les stats (bonheur, énergie, saleté…)
- Après un certain temps, l'œuf **éclot en disciple**
- La **forme du disciple dépend des actions du joueur** (et du coup des stats de la créature)


---

## Fonctionnalités

- Boucle de jeu interactive en terminal
- Menu avec choix d’actions
- Système de stats évolutives
- Système d’évolution (œuf → disciple)
- ASCII art rétro pour les créatures
- Gestion du temps par tours
- Mort possible si la créature est négligée

---

## RoadMap

- [x] Choix du nom
- [x] Choix de l'œuf
- [x] Système de stats
- [X] Phase œuf
- [X] HUD
- [ ] Éclosion en disciple
- [ ] ASCII art par état
- [ ] Animations ASCII
- [ ] Sauvegarde de la partie
- [ ] Évolutions avancées (Digimon-like)

## Ce que j'ai appris

- [x] Créer mes premiers ASCII
- [x] Utiliser des arguments propres pour une fonction (animer_oeuf)
- [x] Utiliser une commande ANSI pour la première fois : 
\033 (pour faire comprendre au terminal: ce qui suit est une commande spéciale)(équivalent ESC)
[ debut de commande
2 mode tout l'ecran
J Erase Display
H Replacer le curseur ligne 1
\033[2J\033[H
Evite les erreurs d'affichage sur VSCode qui à du mal avec "clear"



