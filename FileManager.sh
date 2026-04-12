#!/bin/bash

create_file() {
    read -p "Entrer le chemin absolu du fichier à créer : " filepath
    
        if [ -f "$filepath" ]; then
        echo "Le fichier existe déjà."
    else
        touch "$filepath"
        echo "Fichier créé avec succès."
    fi
}


delete_file() {
    read -p "Entrer le chemin absolu du fichier à supprimer : " filepath

    
    if [ -f "$filepath" ]; then
        rm "$filepath"
        echo "Fichier supprimé avec succès."
    else
        echo "Le fichier n'existe pas."
    fi
}


    echo "1) Créer un fichier"
    echo "2) Supprimer un fichier"
    echo "3) Quitter"

    read -p "Choisir une option : " choix

    case $choix in
        1)
            create_file
            ;;
        2)
            delete_file
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Choix invalide."
            ;;
    esac
