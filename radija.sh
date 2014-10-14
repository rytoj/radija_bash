#!/bin/bash
# This script is awesome!
# Version: 0.13
# Programa skaito radijijo stotis is radija.txt
# Sekanti stoti paleisti su: 'Ctrl + C' arba 'q'

# Komanda numeruojanti radijas
# $ nl -n rn radija.txt

# Iskerpa tik pavadinimus
# $ cut -d$'\t' -f2 radija.txt

# Spalvinimas 
#echo -e "\e[7m`ls pl/`\e[27m"
#echo "---------------"
#
#
# Darbinis katalogas
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Pagrindinis grojarastis 'pl' kataloge
grojarastis="$DIR/pl/lt.txt"

# Atkerpa radio stoties pavadinima ir ji atspausdina
cut -d$'\t' -f2 $grojarastis|nl -n rn

# Atkerpa tik radio stoties nuoroda
stotis=`cut -d$'\t' -f1 $grojarastis`



echo $stoties_pav

echo -e  "Pasirinkite: \c "

read eilute

while true
do

# Kuri skaitoma eilute 'radija.txt' dokumente
eil_il=`wc -l < $grojarastis`

#echo "eilute"=$eilute
#echo "eilutes_il"=$eil_il

while [ $eil_il -ge $eilute ]
do

# Nuskaitoma dokumento eilute ir pakeiciamas jos skaicius
mplayer `sed -n "$eilute"p $grojarastis`

eilute=$(($eilute + 1))
sleep 1
echo "eilute="$eilute

done # while ciklo pabaiga

# Playlist nuolat kartojasi 
eilute=1

done # pagrindinio ciklo pabaiga
