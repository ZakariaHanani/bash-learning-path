#!/bin/bash

# Function to create a user
function create_user() {
    read -p "Enter the USERNAME to create: " USERNAME

    # Check if user already exists
    if id "$USERNAME" &>/dev/null; then
        echo "User '$USERNAME' already exists."
    else
        sudo useradd "$USERNAME"
        echo " User '$USERNAME' created successfully."
    fi
}

# Function to delete a user
function delete_user(){ 
    read -p "Enter the USERNAME to delete: " USERNAME

    # Check if user exists
    if id "$USERNAME" &>/dev/null; then
        sudo userdel "$USERNAME"
        echo " User '$USERNAME' deleted successfully."
    else
        echo " User '$USERNAME' does not exist."
    fi
}

# Main menu
echo "=============================="
echo "     User Management Menu     "
echo "=============================="
echo "1) Create a user"
echo "2) Delete a user"
echo "3) Exit"
echo "=============================="

read -p "Choose an option: " CHOICE

# Using case
case $CHOICE in
    1)
        create_user
        ;;
    2)
        delete_user
        ;;
    3)
        echo " Goodbye!"
        exit 0
        ;;
    *)
        echo " Invalid CHOICE."
        ;;
esac
