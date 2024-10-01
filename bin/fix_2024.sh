fix_all()
{
    sed -i "s/$1/$2/" events/2024/config/entries.csv
    #sed -i "s/$1/$2/" events/2024/config/entrants.csv
    #sed -i "s/$1/$2/" events/2024/config/motions.csv
}

# Fix countries
fix_all ",UK," ",United Kingdom,"
fix_all ",U.K.," ",United Kingdom,"
fix_all ",USA," ",United States,"

# Fix names such as George Fulton Fulton
fix_all "Chris Cleland" "Cleland"
fix_all "Jason Morton,Jason Morton" "Jason,Morton"

# Use previous names

# Check for any suspect names!
grep 'M[rs][a-z]*,[A-Za-z]*,[A-Za-z]* [A-Za-z]*' events/2024/config/entrants.csv
