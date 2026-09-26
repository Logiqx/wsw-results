YEAR=$(date +%Y)
TMP=$(mktemp)

IN=events/$YEAR/config/entries.csv
OUT=events/$YEAR/config/entries.tmp

csvcut -c ID,Created,Title,"First Name","Family Name",Country,Legend,"Wingboard Fleet","Wingboard Sponsors","Sailboard Fleet","Sailboard Sponsors","UKWA Member","ISWC Member","Kiteboard Fleet","Kiteboard Sponsors","Boat Name","Entrants Own Motion Mini","First Timer",Grouping,Youth,Adult,"Youth Weekend","All Week",Weekdays,Tally,Wingboard,"Sailboard (foil)","Sailboard (fin)",Kiteboard,Boat,"WSW GPS's Needed","Number of Days",Year $IN | tail +2 >$TMP

echo "ID,Created,Title,First Name,Family Name,Country,Legend,Wingboard Fleet,Wingboard Sponsors,Sailboard Fleet,Sailboard Sponsors,UKWA Member,ISWC Member,Kiteboard Fleet,Kiteboard Sponsors,Boat Name,Entrants Own Motion Mini,First Timer,Grouping,Youth,Adult,Youth Weekend,All Week,Weekdays,Tally,Wingboard,Sailboard (foil),Sailboard (fin),Kiteboard,Boat,WSW GPS's Needed,Number of Days,Year,Motion for Wingboard,Motion for Sailboard (foil),Motion for Sailboard (fin),Motion for Kiteboard,Motion for Boat" >$OUT

join -t, $TMP events/$YEAR/config/motions-ids.csv >>$OUT

rm $TMP

mv $OUT $IN
