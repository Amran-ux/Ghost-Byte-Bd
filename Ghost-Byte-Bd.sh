#!/bin/bash

# Color Codes for Better Visibility
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BOLD='\033[1m'
NC='\033[0m'  # No Color

# Banner with Beautiful Colors
function banner() {
    echo -e "${CYAN}"
    echo "███████╗ ██████╗ ██╗  ██╗████████╗    ${BOLD}${CYAN}██████╗ ██████╗ ██████╗ ${NC}"
    echo "██╔════╝██╔═══██╗██║ ██╔╝╚══██╔══╝    ██╔══██╗██╔══██╗██╔══██╗"
    echo "███████╗██║   ██║█████╔╝    ██║       ██████╔╝██████╔╝██████╔╝"
    echo "╚════██║██║   ██║██╔═██╗    ██║       ██╔═══╝ ██╔═══╝ ██╔═══╝ "
    echo "███████║╚██████╔╝██║  ██╗   ██║       ██║     ██║     ██║     "
    echo "╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚═╝     ╚═╝     ╚═╝     "
    echo -e "${BOLD}${CYAN}        GHOST-BYTE-BD - All-in-One Information Gathering Tool${NC}"
    echo -e "${NC}"
}

# Main Menu with Colors
function menu() {
    banner
    echo -e "${YELLOW}[+] ${GREEN}Select an option from the menu below:${NC}"
    echo "14. ${BOLD}${CYAN}Sitemap Generator (New)${NC}"
    echo "15. ${BOLD}${CYAN}Server OS & Version Detection (New)${NC}"
    echo "16. ${BOLD}${RED}Exit${NC}"

    read -p "Select an option (14-16): " choice

    case $choice in
        14) echo -e "${GREEN}Running Sitemap Generator...${NC}"; bash modules/sitemap_generator.sh ;;
        15) echo -e "${GREEN}Running Server OS & Version Detection...${NC}"; bash modules/server_os_detection.sh ;;
        16) echo -e "${RED}Exiting...${NC}"; exit 0 ;;
        *) echo -e "${RED}Invalid choice. Try again.${NC}" ;;
    esac
}

# Run the Menu in a Loop
while true; do
    menu
done