#!/bin/bash

# >> Declare Color
FONT="\033[0m"
CELADON="\033[38;5;86m"
HONEY="\033[38;2;204;169;50m"

# >> REPO
export REPO="https://raw.githubusercontent.com/bestmpc/x/main/"

function print_install() {
	echo -e "${CELADON} =============================== ${FONT}"
    echo -e "${HONEY} # $1 ${FONT}"
	echo -e "${CELADON} =============================== ${FONT}"
    sleep 1
}

# >> Instal Menu
function menu(){
    clear; print_install "Memasang Menu Packet"; cd /root;
    wget -O ~/menu.zip "${REPO}menu.zip" >/dev/null 2>&1;
    unzip menu.zip -d /root/menu/ >/dev/null 2>&1;
    mv /root/menu/menu/menu/* /usr/local/sbin/; chmod +x /usr/local/sbin/*;
    rm -rf /root/menu.zip /root/menu; clear; cd /root;

    wget ${REPO}botmin.zip > /dev/null 2>&1; 
    unzip botmin.zip -d /root/ >/dev/null 2>&1;
    mv botmin /etc; rm *.zip; touch /etc/botmin/var.txt
}

clear; menu; sleep; clear
