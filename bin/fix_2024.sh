fix_all()
{
    sed -i "s/$1/$2/" events/2024/config/entries.csv
    #sed -i "s/$1/$2/" events/2024/config/entrants.csv
    #sed -i "s/$1/$2/" events/2024/config/motions.csv
}

# Fix countries
fix_all Belgique Belgium
fix_all Nederland Netherlands
fix_all ",DE," ",Germany,"
fix_all "dosret" "United Kingdom"
fix_all "E gland" "United Kingdom"
fix_all "Great Britain" "United Kingdom"
fix_all "U.K." "United Kingdom"
fix_all "Slow,," "Slow,United Kingdom,"
fix_all "Speedfine,," "Speedfine,United Kingdom,"
fix_all "Standish,," "Standish,United Kingdom,"
fix_all "USA" "United States"

# Fix names such as George Fulton Fulton
fix_all "Cash James Cox" "Cash James"
fix_all "Chris Cleland" "Cleland"
fix_all "George Fulton" "Fulton"
fix_all "Jason Morton,Jason Morton" "Jason,Morton"
fix_all "Neil Binding" "Binding"
fix_all "Theo Cash Cox" "Theo Cash"

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
