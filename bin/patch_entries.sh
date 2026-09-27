YEAR=$(date +%Y)
TMP=$(mktemp)

IN=events/$YEAR/config/entries.csv
OUT=events/$YEAR/config/entries.tmp

# Extract all fields, except Motion fields from existing entries.csv
csvcut -c ID,Created,Title,"First Name","Family Name",Country,Legend,"Wingboard Fleet","Wingboard Sponsors","Sailboard Fleet","Sailboard Sponsors","UKWA Member","ISWC Member","Kiteboard Fleet","Kiteboard Sponsors","Boat Name","Entrants Own Motion Mini","First Timer",Grouping,Youth,Adult,"Youth Weekend","All Week",Weekdays,Tally,Wingboard,"Sailboard (foil)","Sailboard (fin)",Kiteboard,Boat,"WSW GPS's Needed","Number of Days",Year $IN | tail +2 >$TMP

# Create new header with Motion fields
echo "ID,Created,Title,First Name,Family Name,Country,Legend,Wingboard Fleet,Wingboard Sponsors,Sailboard Fleet,Sailboard Sponsors,UKWA Member,ISWC Member,Kiteboard Fleet,Kiteboard Sponsors,Boat Name,Entrants Own Motion Mini,First Timer,Grouping,Youth,Adult,Youth Weekend,All Week,Weekdays,Tally,Wingboard,Sailboard (foil),Sailboard (fin),Kiteboard,Boat,WSW GPS's Needed,Number of Days,Year,Motion for Wingboard,Motion for Sailboard (foil),Motion for Sailboard (fin),Motion for Kiteboard,Motion for Boat" >$OUT

# Join the two fields on ID field
join -t, $TMP events/$YEAR/config/motions-ids.csv >>$OUT

# Finish up
rm $TMP
mv $OUT $IN
