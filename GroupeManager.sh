#!/bin/bash

# Fonction pour créer un groupe
create_group() {
    read -p "Entrer le nom du groupe à créer : " GROUPENAME

    # Vérifier si le groupe existe déjà
    if getent group "$GROUPENAME" > /dev/null; then
        echo "Le groupe existe déjà."
    else
        sudo groupadd "$GROUPENAME"
        echo "Groupe créé avec succès."
    fi
}

# Fonction pour supprimer un groupe
delete_group() {
    read -p "Entrer le nom du groupe à supprimer : " GROUPENAME

    # Vérifier si le groupe existe
    if getent group "$GROUPENAME" > /dev/null; then
        sudo groupdel "$GROUPENAME"
        echo "Groupe supprimé avec succès."
    else
        echo "Le groupe n'existe pas."
    fi
}

# Menu
while true; do
    echo "------------------------------"
    echo " Gestion des groupes"
    echo "------------------------------"
    echo "1) Créer un groupe"
    echo "2) Supprimer un groupe"
    echo "3) Quitter"
    echo "------------------------------"

    read -p "Choisir une option : " choix

    case $choix in
        1)
            create_group
            ;;
        2)
            delete_group
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Choix invalide."
            ;;
    esac
done
