 GNU nano 7.2                                                                                                   internsect1.sh                                                                                                            
#!/bin/bash

# Function to display CPU information
function cpu_getinfo() {
    lscpu
}

# Function to display memory information
function memory_getinfo() {
    free
}

# Function to create a new user
function user_create() {
    username="$1"
    # Add logic to create user
    sudo useradd -m "$username"
}

# Function to list users
function user_list() {
    if [ "$1" == "--sudo-only" ]; then
        # List users with sudo permissions
        grep -Po '^sudo.+:\K.*$' /etc/group | tr ',' '\n'
    else
        # List all regular users
        getent passwd | cut -d: -f1
    fi
}

# Function to get file information
function file_getinfo() {
    file="$2"

    case "$1" in
        "--size" | "-s") ls -l "$file" | awk '{print $5}' ;;
        "--permissions" | "-p") ls -l "$file" | awk '{print $1}' ;;
        "--owner" | "-o") ls -l "$file" | awk '{print $3}' ;;
        "--last-modified" | "-m") stat -c %y "$file" ;;
        *) # Display all information if no option specified
            ls -l "$file" ;;
    esac
}

# Main command logic
case "$1" in
    "cpu") cpu_getinfo ;;
    "memory") memory_getinfo ;;
    "user") 
        case "$2" in
            "create") user_create "$3" ;;
            "list") user_list "$3" ;;
        esac
        ;;
    "file") file_getinfo "$2" "$3" ;;
    "--version") echo "internsctl v0.1.0" ;;
    "--help") echo "Usage: internsctl [OPTIONS] COMMAND [ARGS]..." ;;
