#!/bin/bash

# Version: 0.11
# Programa skaito radijijo stotis is radija.txt
# Sekanti stoti paleisti su: 'Ctrl + C' arba 'q'

while true
do

# Kuri skaitoma eilute 'radija.txt' dokumente
eilute=1
eil_il=`wc -l < radija.txt`

#echo "eilute"=$eilute
#echo "eilutes_il"=$eil_il

while [ $eil_il -ge $eilute ]
do

# Nuskaitoma dokumento eilute ir pakeiciamas jos skaicius
mplayer `sed -n "$eilute"p radija.txt`

eilute=$(($eilute + 1))
sleep 1
echo "eilute="$eilute

done # while ciklo pabaiga
done # pagrindinio ciklo pabaiga
