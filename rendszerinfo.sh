#!/bin/bash

# CPU információk kiírása
cpu_info() {
    echo "----- CPU informacio -----"
    lscpu
}

# Memória információk kiírása
mem_info() {
    echo "----- Memoria informacio -----"
    free -h
}

# Lemezhasználat megjelenítése
disk_info() {
    echo "----- Lemezhasznalat -----"
    df -h
}

# Aktuális felhasználó kiírása
user_info() {
    echo "----- Aktualis felhasznalo -----"
    whoami
}

# Dátum és idő megjelenítése
date_info() {
    echo "----- Datum es ido -----"
    date
}

# Rendszer futási ideje
uptime_info() {
    echo "----- Uptime -----"
    uptime
}

# Végtelen ciklus a folyamatos működéshez
while true
do
    # képernyő törlése
    clear

    # Menü megjelenítése
    echo "===== RENDSZERINFORMACIOS MENU ====="
    echo 
    echo "1 - CPU info"
    echo "2 - Memoria info"
    echo "3 - Lemezhasznalat"
    echo "4 - Felhasznalo"
    echo "5 - Datum es ido"
    echo "6 - Uptime"
    echo "7 - Kilepes"
    echo
    echo "-----------------------------------"

    # Felhasználói választás bekérése
    read -p "Valasztas: " VAL

    # Választás feldolgozása
    case $VAL in
        1) cpu_info ;;
        2) mem_info ;;
        3) disk_info ;;
        4) user_info ;;
        5) date_info ;;
        6) uptime_info ;;
        7) exit ;;
        *) echo "Hibas valasztas!" ;;
    esac

    # Üres sor a jobb olvashatóságért
    echo

    # Várakozás a felhasználóra
    read -p "Nyomj entert a folytatashoz..."
done
