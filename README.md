# Rendszerinformációs shell script és bemutató weboldal

## Projekt leírása

A projekt célja egy Linux operációs rendszer alatt futó, menüvezérelt shell script elkészítése, amely különböző rendszerinformációkat jelenít meg a felhasználó számára.

A script működését egy statikus, reszponzív weboldal mutatja be, amely HTML és CSS segítségével készült.

---

## Shell script funkciók

A script egy menü segítségével az alábbi információkat jeleníti meg:

- CPU információk (`lscpu`)
- Memória adatok (`free -h`)
- Lemezhasználat (`df -h`)
- Aktuális felhasználó (`whoami`)
- Dátum és idő (`date`)
- Rendszer uptime (`uptime`)

A program:
- függvényeket használ
- `while` ciklusban fut
- `case` szerkezettel kezeli a menüt
- felhasználói bemenetet kér be

---

## Weboldal

A projekt tartalmaz egy statikus weboldalt, amely bemutatja a script működését.

### Tartalom:
- projekt ismertetése
- funkciók listája
- működés leírása
- képernyőkép a program futásáról
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
- kep.png

---

## Script futtatása

Linux alatt:

- chmod +x rendszerinfo.sh
- ./rendszerinfo.sh

---

## Használat

A weboldalon található "Script letöltése" gomb segítségével a felhasználó letöltheti a `.sh` fájlt, majd saját Linux környezetében futtathatja azt.

---

## Képernyőkép

A weboldal tartalmaz egy képernyőképet a program futás közbeni állapotáról.

---

## Készítette

[Balogh Annamária]  
[Neptun kód: DDC6TU]
