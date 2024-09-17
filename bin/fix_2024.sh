fix_data()
{
    OLD=$1
    NEW=$2
    sed -i "s/$OLD/$NEW/" events/2024/config/entrants.csv
}

# Fix countries
fix_data Belgique Belgium
fix_data Nederland Netherlands
fix_data "E gland" "United Kingdom"
fix_data "Great Britain" "United Kingdom"
fix_data "U.K." "United Kingdom"
fix_data "Slow,," "Slow,United Kingdom,"
fix_data "Speedfine,," "Speedfine,United Kingdom,"
fix_data "Standish,," "Standish,United Kingdom,"
fix_data "USA" "United States"

# Fix names such as George Fulton Fulton
fix_data "Chris Cleland" "Cleland"
fix_data "George Fulton" "Fulton"
fix_data "Jason Morton,Jason Morton" "Jason,Morton"
fix_data "Neil Binding" "Binding"

# Use previous names
fix_data "David,Williams" "Dave,Williams"
fix_data "matt,york" "Matthew,York"
fix_data "Joseph,Trunkfield" "Joe,Trunkfield"
fix_data "JP,Standish" "John-Paul,Standish"
fix_data "Robert,Dunn" "Rob,Dunn"
fix_data "Robert,Spagnoletti" "Bob,Spagnoletti"
fix_data "Sav,Sav" "Sav,Salvage"

# Check for any suspect names!
grep 'M[rs][a-z]*,[A-Za-z]*,[A-Za-z]* [A-Za-z]*' events/2024/config/entrants.csv
