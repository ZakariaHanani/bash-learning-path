#!/bin/bash

read -p "Entrer le chemin du fichier : " filepath
if [ -f "$filepath" ]; then
    read -p "Entrer les droits pour le propriétaire (ex: rwx) : " owner
    read -p "Entrer les droits pour le groupe (ex: rw-) : " group
    read -p "Entrer les droits pour les autres (ex: r--) : " others
    sudo chmod  u="$owner",g="$group",o="$others" "$filepath"

    echo "Permissions modifiées avec succès."
	ls -ls | grep "$filepath"
else
    echo "Le fichier n'existe pas."
fi 
