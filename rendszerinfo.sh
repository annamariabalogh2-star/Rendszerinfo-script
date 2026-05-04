#!/bin/bash

# =========================
# Rendszerinformacios script
# =========================

# CPU info
cpu_info()
{
    echo "----- CPU informacio -----"
    lscpu
}

# Memoria info
mem_info()
{
    echo "----- Memoria informacio -----"
    free -h
}

# Lemez info
disk_info()
{
    echo "----- Lemezhasznalat -----"
    df -h
}

# Felhasznalo
user_info()
{
    echo "----- Aktualis felhasznalo -----"
    whoami
}

# Datum
date_info()
{
    echo "----- Datum es ido -----"
    date
}

# Uptime
uptime_info()
{
    echo "----- Uptime -----"
    uptime
}
# Disk check
disk_check()
{
    echo "----- Lemez ellenorzes -----"

    read FS SIZE USED AVAIL USE MOUNT <<< $(df / | tail -1)

    USED=${USE%\%}

    echo "Hasznalat: $USED %"

    if [ $USED -gt 80 ]
    then
        echo "FIGYELEM! Majdnem tele a lemez!"
    else
        echo "Rendben."
    fi
}

# Memoria info
mem_check()
{
    echo "----- Memoria info -----"
    free -h
    echo "Ellenorizd a szabad memoriat!"
}

# System info
system_check()
{
    echo "----- Rendszer allapot -----"

    disk_check
    echo
    mem_check
}
# Log clean
log_clean()
{
    echo "----- Log fajlok torlese -----"

    read -p "Biztos torlod a tmp fajlokat? (i/n): " VAL

    if [ "$VAL" = "i" ]
    then
        rm -f /tmp/*
        echo "Torles kesz."
    else
        echo "Megszakitva."
    fi
}

# ---- FŐPROGRAM ----

while true
do
    clear

    echo "===== RENDSZER MENU ====="
    echo
    echo "1 - CPU"
    echo "2 - Memoria"
    echo "3 - Lemez"
    echo "4 - Felhasznalo"
    echo "5 - Datum"
    echo "6 - Uptime"
    echo "7 - Lemez ellenorzes"
    echo "8 - Memoria ellenorzes"
    echo "9 - Rendszer allapot"
    echo "10 - Log fajlok torlese"
    echo "11 - Kilepes"
    echo

    read -p "Valasztas: " VAL

    case $VAL in
        1) cpu_info ;;
        2) mem_info ;;
        3) disk_info ;;
        4) user_info ;;
        5) date_info ;;
        6) uptime_info ;;
        7) disk_check ;;
        8) mem_check ;;
        9) system_check ;;
        10) log_clean ;;
        11) exit ;;
        *) echo "Hibas!" ;;
    esac

    echo
    read -p "Enter..."
done
