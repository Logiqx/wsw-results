fix_all()
{
    sed -i "s/$1/$2/i" events/2025/config/entries.csv
}

# Remove extra whitespace from latest entries
for ENTRIES in $(ls events/*/config/entries.csv)
do
  sed -i 's/ *$//;s/ *"/"/g;s/ *,/,/g' $ENTRIES
done

# Fix countries
fix_all ",BEL *," ",Belgium,"
fix_all ",FRA *," ",France,"
fix_all ",GER *," ",Germany,"
fix_all ",GBR *," ",United Kingdom,"
fix_all ",NED *," ",Netherlands,"
fix_all ",POR *," ",Portugal,"
fix_all ",USA *," ",United States,"

# Fix names for consistency with past events
fix_all ",David,Williams," ",Dave,Williams,"
fix_all ",JP,Standish," ",John-Paul,Standish,"
fix_all ",Jean-marc," ",Jean-Marc,"
fix_all ",Jon,Wills," ",Jonathan,Wills,"
fix_all ",Robert,Longstaff," ",Rob,Longstaff,"
fix_all ",Robert,Spagnoletti," ",Bob,Spagnoletti,"
fix_all ",Stephen,Thompson," ",Steve,Thompson,"

# Fix groups
fix_all "Weymouth and Portland Kitesurfing Club" ""

# Check for any suspect family names!
grep 'M[rs][a-z]*,[A-Za-z]*,[A-Za-z]* [A-Za-z]*' events/2025/config/entrants.csv
