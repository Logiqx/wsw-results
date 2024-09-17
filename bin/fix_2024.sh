fix_entries()
{
    sed -i "s/$1/$2/" events/2024/config/entries.csv
}

fix_entrants()
{
    sed -i "s/$1/$2/" events/2024/config/entrants.csv
}

fix_motions()
{
    sed -i "s/$1/$2/" events/2024/config/motions.csv
}

fix_all()
{
    sed -i "s/$1/$2/" events/2024/config/entries.csv
    sed -i "s/$1/$2/" events/2024/config/entrants.csv
    sed -i "s/$1/$2/" events/2024/config/motions.csv
}

# Fix countries
fix_entrants Belgique Belgium
fix_entrants Nederland Netherlands
fix_entrants "E gland" "United Kingdom"
fix_entrants "Great Britain" "United Kingdom"
fix_entrants "U.K." "United Kingdom"
fix_entrants "Slow,," "Slow,United Kingdom,"
fix_entrants "Speedfine,," "Speedfine,United Kingdom,"
fix_entrants "Standish,," "Standish,United Kingdom,"
fix_entrants "USA" "United States"

# Fix names such as George Fulton Fulton
fix_all "Chris Cleland" "Cleland"
fix_all "George Fulton" "Fulton"
fix_all "Jason Morton,Jason Morton" "Jason,Morton"
fix_all "Neil Binding" "Binding"

# Use previous names
fix_all "David,Williams" "Dave,Williams"
fix_all "matt,york" "Matthew,York"
fix_all "Joseph,Trunkfield" "Joe,Trunkfield"
fix_all "JP,Standish" "John-Paul,Standish"
fix_all "Robert,Dunn" "Rob,Dunn"
fix_all "Robert,Spagnoletti" "Bob,Spagnoletti"
fix_all "Sav,Sav" "Sav,Salvage"

# Check for any suspect names!
grep 'M[rs][a-z]*,[A-Za-z]*,[A-Za-z]* [A-Za-z]*' events/2024/config/entrants.csv
