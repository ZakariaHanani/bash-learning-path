#!/bin/bash
read -p "Entrer le chemin du fichier : " filepath
if [ -f "$filepath" ]; then
   read -p "Entrer le nom du nouvel utilisateur : " username

   if id "$username" > /dev/null 2>&1; then

        read -p "Entrer le nom du nouveau groupe : " groupname

        if getent group "$groupname" > /dev/null; then

            # Modifier le propriétaire et le groupe
            sudo chown "$username:$groupname" "$filepath"
            echo "Propriétaire modifié avec succès."

        else
            echo "Le groupe n'existe pas."
        fi

    else
        echo "L'utilisateur n'existe pas."
    fi

else
    echo "Le fichier n'existe pas."
fi
