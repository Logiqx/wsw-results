YEAR=$(date +%Y)

IN=events/$YEAR/config/entries.csv

csvcut -c ID,Title,"First Name","Family Name","Youth Weekend","UKWA Member","Entrants Own Motion Mini","Motion for Boat","Motion for Kiteboard","Motion for Sailboard (fin)","Motion for Sailboard (foil)","Motion for Wingboard" $IN

