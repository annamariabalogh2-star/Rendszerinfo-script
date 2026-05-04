# Rendszerfigyelő és karbantartó shell script és bemutató weboldal

## Projekt leírása

A projekt célja egy Linux operációs rendszer alatt futó, menüvezérelt shell script elkészítése, amely rendszerinformációk megjelenítésére, valamint alapvető ellenőrzési és karbantartási feladatok elvégzésére szolgál.

A script működését egy statikus, reszponzív weboldal mutatja be, amely HTML és CSS segítségével készült.

---

## Shell script funkciók

A script egy menü segítségével az alábbi funkciókat biztosítja:

### Információ lekérdezés

- CPU információk megjelenítése
- Memória adatok lekérdezése
- Lemezhasználat megjelenítése
- Aktuális felhasználó kiírása
- Dátum és idő megjelenítése
- Rendszer uptime megjelenítése

### Ellenőrző funkciók

- Lemezhasználat ellenőrzése (figyelmeztetés magas használat esetén)
- Memória állapot megjelenítése
- Összetett rendszerállapot ellenőrzés

---

## A program működése

A script indítás után egy menüt jelenít meg, ahol a felhasználó kiválaszthatja a kívánt műveletet.

A program:
- függvényeket használ
- `while` ciklusban fut
- `case` szerkezettel kezeli a menüt
- felhasználói bemenetet kér be

A script minden művelet után visszatér a főmenübe, így folyamatosan használható.

---

## Weboldal

A projekt tartalmaz egy statikus weboldalt, amely bemutatja a script működését.

### Tartalom:

- projekt ismertetése
- funkciók bemutatása
- működés leírása
- képernyőképek a program futásáról
- script letöltési lehetőség

---

## Reszponzív kialakítás

A weboldal reszponzív, azaz különböző képernyőméreteken is megfelelően jelenik meg:

- mobiltelefonon
- tableten
- asztali számítógépen

A reszponzivitás megvalósítása:

- `meta viewport` használatával
- rugalmas szélességekkel (`max-width`)
- CSS media query alkalmazásával

---

## Felhasznált technológiák

- Bash (shell script)
- Linux (Ubuntu / Debian)
- HTML5
- CSS3

---

## Projekt struktúra

weboldal/
- index.html
- style.css
- rendszerinfo.sh
- kepek/
  - menu.png
  - lemez.png
  - rendszer.png

---

## Script futtatása

Linux alatt:

```bash
chmod +x rendszerinfo.sh
./rendszerinfo.sh

## Készítette

[Balogh Annamária]  
[Neptun kód: DDC6TU]
