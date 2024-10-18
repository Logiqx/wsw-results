fix_all()
{
    sed -i "s/$1/$2/i" events/2024/config/entries.csv
}

# Remove extra whitespace from latest entries
for ENTRIES in $(ls events/*/config/entries.csv)
do
  sed -i 's/ *$//;s/ *"/"/g;s/ *,/,/g' $ENTRIES
done

# Fix countries
fix_all ",England *," ",United Kingdom,"
fix_all ",UNITED KINGDOM *," ",United Kingdom,"
fix_all ",UK *," ",United Kingdom,"
fix_all ",U.K. *," ",United Kingdom,"
fix_all ",US *," ",United States,"
fix_all ",USA *," ",United States,"

# Fix names such as George Fulton Fulton
fix_all "Jean-marc" "Jean-Marc"
fix_all "Chris Cleland" "Cleland"
fix_all "Jason Morton,Jason Morton" "Jason,Morton"

# Fix groups
fix_all "Weymouth and Portland Kitesurfing Club" ""

# Check for any suspect family names!
grep 'M[rs][a-z]*,[A-Za-z]*,[A-Za-z]* [A-Za-z]*' events/2024/config/entrants.csv
